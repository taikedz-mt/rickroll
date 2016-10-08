# Rick Roller

Troll your players by making a sound play when they place a certain block. By default, only a midi-based sampling is provide, to avoid licensing issues.

By default, the sound is played when a player places a `default:mese` block, but this is configurable in minetest.conf:

	-- default block
	rickroll.block = default:mese
	
	-- default chance
	rickroll.chance = 1

	-- default sound name
	rickroll.sound = roll

You can place your own sound in the sounds directory, define your own troll block, and determine the frequency at which the sound would be triggered. For example, you might deter cobllestone buildings with:

	rickroll.block = default:cobble,default:desertcobble
	rickroll.chance = 20
	rickroll.sound = mysound

Which would play a sound `mysound.ogg`, or a random choice of `mysound.*.ogg` substituting `*` for a number.

People will soon avoid building with cobble stone ;-)

## Other sounds

A basic soundpack for this mod is available at https://github.com/taikedz/minetest-rickroll-sounds

Clone the mod, and copy its sounds into this mod's `sounds` directory.
