local function case(variable, equalsTo, callback, currentResponse)
	if variable == equalsTo then
		local value = callback()
		if value then
			currentResponse = value
		end
	end
	
	return {
		case = function(equalsTo, callback)
			return case(variable, equalsTo, callback, currentResponse)
		end,
		default = function(callback)
			if not currentResponse then
				callback()
			end
		end,
		response = currentResponse
	}
end

return case
