return function()
	local combineReducers = require(script.Parent.combineReducers)

	it("should invoke each sub-reducer for every action", function()
		local aCount = 0
		local bCount = 0

		local reducer = combineReducers({
			a = function(state, action)
				aCount = aCount + 1
			end,
			b = function(state, action)
				bCount = bCount + 1
			end,
		})

		-- Mock reducer invocation
		reducer({}, {})
		expect(aCount).to.equal(1)
		expect(bCount).to.equal(1)
	end)
end
