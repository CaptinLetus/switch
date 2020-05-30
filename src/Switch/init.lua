local Case = require(script.Case)

return function(variable)
	return {
		case = function(equalsTo, callback)
			return Case(variable, equalsTo, callback)
		end
	}
end
