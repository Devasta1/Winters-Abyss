include('shared.lua')

function ENT:Initialize()
end

function ENT:Draw()
	self:DrawModel()
	for k,v in pairs(ents.FindInSphere(self:GetPos(),500)) do
		if v:GetClass() == self:GetClass() then
			render.DrawLine(self:GetPos(), v:GetPos(),Color(0,255,0))
		end
	end
end