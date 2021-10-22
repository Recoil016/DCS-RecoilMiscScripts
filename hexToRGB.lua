---Function hexToRgb
--Converts a six-digit HTML hex color value to an RGBA table for use in DCS drawings
---@param hex string: Six-digit HTML hex color value
---@param alphapercent number: Desired opacity in percent. Defaults to 100.
function hexToRgb(hex, alphapercent)
	local s,e,h = string.find(hex, "([abcdefABCDEF%d][abcdefABCDEF%d][abcdefABCDEF%d][abcdefABCDEF%d][abcdefABCDEF%d][abcdefABCDEF%d])")

	local c1,c2,c3 = h:match("(..)(..)(..)")

	local alpha = alphapercent or 100

	return({tonumber(c1,16)/255,tonumber(c2,16)/255,tonumber(c3,16)/255,alpha/100})
end