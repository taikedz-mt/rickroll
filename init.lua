local trollnames = minetest.setting_get("rickroll.block") or "default:mese"
local trollfreq = tonumber(minetest.setting_get("rickroll.chance")) or 1
local soundname = minetest.setting_get("rickroll.sound") or "roll"
local message = minetest.setting_get("rickroll.message") or "Sing along now!"

local trolllist = trollnames:split(",")

minetest.register_on_placenode(function(pos, newnode, placer, oldnode, itemstack, pointed_thing)
	if math.random(1,trollfreq) ~= 1 then return end
	local name = newnode.name
	for _,trollname in ipairs(trollnames:split(",")) do
		if name == trollname then
			minetest.chat_send_player(placer:get_player_name(),"<rickroller>: You placed "..trollname.."! "..message)
			minetest.sound_play(soundname,{
				pos = pos,
				max_hear_distance = 10,
				})
		end
	end
end)
