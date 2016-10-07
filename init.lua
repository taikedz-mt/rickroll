local trollname = minetest.setting_get("rickroll.block") or "default:mese"
local trollfreq = tonumber(minetest.setting_get("rickroll.chance")) or 1
local soundname = minetest.setting_get("rickroll.sound") or "roll"

minetest.register_on_placenode(function(pos, newnode, placer, oldnode, itemstack, pointed_thing)
	local name = newnode.name
	if name == trollname then
		minetest.sound_play(soundname,{
			pos = pos,
			max_hear_distance = 10,
			})
	end
end)
