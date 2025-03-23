local spr = app.open("./gothic_lang_mono.aseprite")

local export_height = spr.height / 2

for i = 1, #spr.layers do
	if spr.layers[i].name == "Layout" then
		spr.layers[i].isVisible = false
	end
	if spr.layers[i].name == "white_bg" then
		spr.layers[i].isVisible = true
	end
	if spr.layers[i].name == "Font" then
		spr.layers[i].isVisible = true
	end
end

spr:crop(0, 14, spr.width, export_height)
spr:saveCopyAs("./data/gothic_lang_mono.bmp")
