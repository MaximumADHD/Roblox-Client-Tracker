--This helper function takes a Rhodium element and a Text string to simulate a user typing an input letter-by-letter.
return function(element, text)
	for i = 1, #text do
		element:sendText(text:sub(i, i))
	end

	wait(0)
end
