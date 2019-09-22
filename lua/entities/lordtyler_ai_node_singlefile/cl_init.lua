include('shared.lua')

function ENT:Initialize()
end

function ENT:Draw()
	self:DrawModel()
	if !(self:GetNWEntity("red") == nil or self:GetNWEntity("red") == NULL) then
		render.DrawLine(self:GetPos(), self:GetNWEntity("red"):GetPos(),Color(255,0,0))
	end
	if !(self:GetNWEntity("blue") == nil or self:GetNWEntity("blue") == NULL) then
		render.DrawLine(self:GetPos(), self:GetNWEntity("blue"):GetPos(),Color(0,0,255))
	end
end


