
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')

function Exists(obj)
	if obj == nil or obj == NULL then
		return false
	else
		return true
	end
end

function ENT:Initialize()
	self:DrawShadow(false)
	self:SetModel("models/hunter/blocks/cube025x025x025.mdl")
	self:SetColor(Color(255,255,0))
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
	self:SetNWInt("Connected",0)
end

function ENT:Think()
	//	self:SetNoDraw(true)
	local npcs = {}
	local path = {}
	pos = self:GetPos()
	
	for k,v in pairs(ents.FindInSphere(pos, 20)) do
		if v:IsNPC() then
			table.insert(npcs,v)
		end
	end
	
	for k,v in pairs(ents.FindInSphere(pos, 250)) do
		local sred = self:GetNWEntity("red")
		local tred = v:GetNWEntity("red")
		local sblue = self:GetNWEntity("blue")
		local tblue = v:GetNWEntity("blue")
		if v:GetClass() == self:GetClass()  and !(v == self) then
			if !(Exists(sred)) and !(Exists(sblue)) and !(Exists(tred)) and !(Exists(tblue)) then
				self:SetNWEntity("blue", v)
				v:SetNWEntity("blue", self)
			end

			local sred = self:GetNWEntity("red")
			local tred = v:GetNWEntity("red")
			local sblue = self:GetNWEntity("blue")
			local tblue = v:GetNWEntity("blue")
			if Exists(sblue) and !(Exists(sred)) and !(Exists(tblue)) and !(Exists(tred)) then
				self:SetNWEntity("red", v)
				v:SetNWEntity("red", self)
			end

			local sred = self:GetNWEntity("red")
			local tred = v:GetNWEntity("red")
			local sblue = self:GetNWEntity("blue")
			local tblue = v:GetNWEntity("blue")
			if Exists(sblue) and (Exists(tblue)) and !(Exists(sblue)) and !(Exists(tred)) then
				self:SetNWEntity("red", v)
				v:SetNWEntity("red", self)
			end

			local sred = self:GetNWEntity("red")
			local tred = v:GetNWEntity("red")
			local sblue = self:GetNWEntity("blue")
			local tblue = v:GetNWEntity("blue")
			if Exists(sred) and !(Exists(tblue)) and !(Exists(sblue)) and !(Exists(tred)) then
				self:SetNWEntity("blue", v)
				v:SetNWEntity("blue", self)
			end
		end
	end
	
	if !(self:GetNWEntity("npc") == nil or self:GetNWEntity("npc") == NULL) then
		table.insert(npcs,self:GetNWEntity("npc"))
		self:SetNWEntity("npc", nil)
	end
	
	for k,v in pairs(npcs) do
		if (v:GetNWEntity("LAST") == nil or v:GetNWEntity("LAST") == NULL) then
			v:SetNWEntity("LAST", self)
		else
			local red = self:GetNWEntity("red")
			local blue = self:GetNWEntity("blue")
			local last = v:GetNWEntity("LAST")
			if !(last == red) then
				if v:GetNWBool("going") == false then
					if !( red == nil or red == NULL) then
						local nodepos = red:GetPos()
						v:SetLastPosition(nodepos+Vector(0,0,6))
					else
						local nodepos = self:GetPos()
						v:SetLastPosition(nodepos+Vector(0,0,6))
					end
					if v:GetNWBool("scared") then
						v:SetSchedule(SCHED_FORCED_GO_RUN)
						t = 0.5
					else
						v:SetSchedule(SCHED_FORCED_GO)
						t = 1
					end
					v:SetNWBool("going", true)
					v:SetNWEntity("LAST", self)
					timer.Simple(t, function() v:SetNWBool("going", false) end)
				end
			end
			if !(last == blue) then
				if v:GetNWBool("going") == false then
					if !( blue == nil or blue == NULL) then
						local nodepos = blue:GetPos()
						v:SetLastPosition(nodepos+Vector(0,0,6))
					else
						local nodepos = self:GetPos()
						v:SetLastPosition(nodepos+Vector(0,0,6))
					end
					if v:GetNWBool("scared") then
						v:SetSchedule(SCHED_FORCED_GO_RUN)
						t = 0.5
					else
						v:SetSchedule(SCHED_FORCED_GO)
						t = 1
					end
					v:SetNWBool("going", true)
					v:SetNWEntity("LAST", self)
					timer.Simple(t, function() v:SetNWBool("going", false) end)
				end
			end
		end
	end
end
