hook.Add("EntityFireBullets", "shootposfix_EntityFireBullets", function(ent, data)
	if IsValid(ent)
		and ent:IsPlayer()
		and ent:Alive()
		and not ent:IsBot()
		and ent._shootposfix
		and data.Src == ent:GetShootPos()
	then
		data.Src = ent._shootposfix

		return true
	end
end)

hook.Add("SetupMove", "shootposfix_SetupMove", function(ply)
	if IsValid(ply)
		and ply:Alive()
		and not ply:IsBot()
	then
		ply._shootposfix = ply:GetShootPos()
	end
end)
