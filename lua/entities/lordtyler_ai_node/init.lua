
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')

function ENT:Initialize()
	  self:DrawShadow(false)
	self:SetModel("models/hunter/blocks/cube025x025x025.mdl")
	self:SetColor(Color(255,0,0))
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
end
function ENT:Think()	
	self:SetNoDraw(false)
	local npcs = {}
	local nodes = {}
	pos = self:GetPos()
	
	
	for k,v in pairs(ents.FindInSphere(pos, 50)) do
		if v:IsNPC() then
			table.insert(npcs,v)
		end
	end
	
	for k,v in pairs(ents.FindInSphere(pos, 500)) do
		if v:GetClass() == self:GetClass() or v:GetClass() == "lordtyler_ai_node_singlefile" then
			if !(v == self) then
				if !(table.HasValue(nodes, v)) then
					table.insert(nodes, v)
				//	print(table.Count(nodes))
				end
			end
		end
	end
	
	if !(self:GetNWEntity("npc") == nil or self:GetNWEntity("npc") == NULL) then
		table.insert(npcs,self:GetNWEntity("npc"))
		self:SetNWEntity("npc", nil)
	end
	
	for k,v in pairs(npcs) do
		local node = table.Random(nodes)
		if !(node == nil) then
			if v:GetNWBool("going") == false then
				local nodepos = node:GetPos()
				v:SetLastPosition(nodepos+Vector(0,0,6))
				if v:GetNWBool("scared") then
					v:SetSchedule(SCHED_FORCED_GO_RUN)
					t = 0.5
				else
					v:SetSchedule(SCHED_FORCED_GO)
					t = 2.5
				end
				v:SetNWBool("going", true)
				timer.Simple(t, function() v:SetNWBool("going", false) end)
			end
		end
	end
end
