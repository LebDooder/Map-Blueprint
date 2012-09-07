---------------------------------
-- Inverted Heightmap
---------------------------------

if (Spring.GetMapOptions().inv == "0" or Spring.GetMapOptions().inv == nil) then
	return
end

if mapinfo.smf.minheight and mapinfo.smf.maxheight then
	local min,max = mapinfo.smf.minheight, mapinfo.smf.maxheight
	mapinfo.smf.minheight = max
	mapinfo.smf.maxheight = min
else
	Spring.Echo("Error mapinfo.lua: InvertedHeightmap selected but minheight and/or maxheight are not set in mapinfo.lua")
end