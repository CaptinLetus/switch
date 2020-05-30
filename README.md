# Code Example

```lua
local switch = require(script.Switch)
local name = "jimmy"

local finalValue = switch(name)
	.case("bob", function ()
		return "bob"
	end)
	.case("joe", function ()
		return "joe"
	end)
	.case("jimmy", function ()
		print("oh look!  its jimmy")
		return "jimmy"
	end)
	.response
	
print(finalValue)
```