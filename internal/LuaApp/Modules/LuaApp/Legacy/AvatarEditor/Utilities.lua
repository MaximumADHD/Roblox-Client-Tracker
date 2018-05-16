local this = {}

local runService = game:GetService('RunService')
local httpService = game:GetService('HttpService')
local guiService = game:GetService('GuiService')

function this.getDescendants(parent, t)
	t = t or {}
	for _, v in next, parent:GetChildren() do
		table.insert(t, v)
		this.getDescendants(v, t)
	end
	return t
end

function this.fastSpawn(func, ...)
	return coroutine.wrap(func)(...)
end


function this.renderWait(a)	-- Waits a single render frame if wait time is small enough
	local s = tick()
	if a and a>.0333 then
		wait(a)
	else
		runService.RenderStepped:wait()
	end
	return tick()-s
end

function this.copyTable(originalTable)
	local copy = {}
	for index,value in pairs(originalTable) do
		copy[index] = value
	end
	return copy
end

function this.addTables(table1,table2)
	for _, v in ipairs(table2) do
		table.insert(table1,#table1+1,v)
	end
end

function this.findFirstChildOfType(parent, typeName)
	if parent then
		for _,child in pairs(parent:GetChildren()) do
			if child:IsA(typeName) then
				return child
			end
		end
	end
end

function this.recursiveDisable(parent)
	if parent then
		if parent:IsA('Script') then
			parent.Disabled = true
		end
		for _,child in pairs(parent:GetChildren()) do
			this.recursiveDisable(child)
		end
	end
end

function this.decodeJSON(json)
	if json == nil or #json == 0 then
		return nil
	end

	local success, result = pcall(function()
		return httpService:JSONDecode(json)
	end)
	if not success then
		if UserSettings().GameSettings:InStudioMode() then
			print("decodeJSON() failed because", result, "Input:", json)
		end
		return nil
	end

	return result
end

function this.httpGet(...)
	local tuple = {...}
	local url = tuple[1]
	local v = {pcall(function()
		return game:HttpGetAsync(url)
	end)}
	if not v[1] then
		return "[]"
	end
	return select(2, unpack(v))
end


function this.httpPost(...)
	local tuple = {...}
	local v = {pcall(function()
		return game:HttpPostAsync(unpack(tuple))
	end)}
	if not v[1] then
		return false
	end

	if v[2] then
		local response = this.decodeJSON(v[2])
		if response then
			return response.success
		end
	end

	return false
end


function this.disconnectEvent(conn)
	if conn then
		if conn.disconnect then
			conn:disconnect()
		end

		if conn.Disconnect then
			conn:Disconnect()
		end
	end
	return nil
end


function this.disconnectEvents(conns)
	if conns and type(conns) == 'table' then
		for _, conn in pairs(conns) do
			if conn.disconnect then
				conn:disconnect()
			end
			if conn.Disconnect then
				conn:Disconnect()
			end
		end
	end
end

function this.create(instanceType)
	return function(data)
		local obj = Instance.new(instanceType)
		for k, v in pairs(data) do
			if type(k) == 'number' then
				v.Parent = obj
			else
				obj[k] = v
			end
		end
		return obj
	end
end

function this.setSelectedCoreObject(obj)
	guiService.SelectedCoreObject = obj
end

function this.getSelectedCoreObject()
	return guiService.SelectedCoreObject
end

local function pivot_rgb(n)
	if n > 0.04045 then
		n = math.pow((n + 0.055) / 1.055, 2.4)
	else
		n = n / 12.92
	end
	return n * 100
end

local function rgb_to_xyz(c)
	local var_R = pivot_rgb(c.r)
	local var_G = pivot_rgb(c.g)
	local var_B = pivot_rgb(c.b)

	-- For Observer = 2 degrees, Illuminant = D65
	local xyz = {}
	xyz.x = var_R * 0.4124 + var_G * 0.3576 + var_B * 0.1805
	xyz.y = var_R * 0.2126 + var_G * 0.7152 + var_B * 0.0722
	xyz.z = var_R * 0.0193 + var_G * 0.1192 + var_B * 0.9505

	return xyz
end

local function pivot_xyz(n)
	if (n > 0.008856) then
		n = math.pow(n, 1.0/3.0)
	else
		n = (7.787 * n) + (16.0 / 116.0)
	end
	return n
end

local function xyz_to_Lab(xyz)
	local ReferenceX = 95.047
	local ReferenceY = 100.0
	local ReferenceZ = 108.883

	local var_X = pivot_xyz(xyz.x / ReferenceX)
	local var_Y = pivot_xyz(xyz.y / ReferenceY)
	local var_Z = pivot_xyz(xyz.z / ReferenceZ)

	local CIELab = {}
	CIELab.L = math.max(0, ( 116 * var_Y ) - 16)
	CIELab.a = 500 * ( var_X - var_Y )
	CIELab.b = 200 * ( var_Y - var_Z )

	return CIELab
end

local function rgb_to_Lab(c)
	local xyz = rgb_to_xyz(c)
	local Lab = xyz_to_Lab(xyz)
	return Lab
end

local function deg2Rad(deg)
	return deg * math.pi / 180.0;
end

function this.delta_CIEDE2000(c1, c2)
	local lab1 = rgb_to_Lab(c1)
	local lab2 = rgb_to_Lab(c2)

	local k_L = 1.0 -- lightness
	local k_C = 1.0 -- chroma
	local k_H = 1.0 -- hue
	local deg360InRad = deg2Rad(360.0)
	local deg180InRad = deg2Rad(180.0)
	local pow25To7 = 6103515625.0 -- ; /* pow(25, 7) */

	-- Step 1
	-- /* Equation 2 */
	local C1 = math.sqrt((lab1.a * lab1.a) + (lab1.b * lab1.b))
	local C2 = math.sqrt((lab2.a * lab2.a) + (lab2.b * lab2.b))
	-- /* Equation 3 */
	local barC = (C1 + C2) / 2.0
	-- /* Equation 4 */
	local G = 0.5 * (1 - math.sqrt(math.pow(barC, 7) / (math.pow(barC, 7) + pow25To7)))
	-- /* Equation 5 */
	local a1Prime = (1.0 + G) * lab1.a
	local a2Prime = (1.0 + G) * lab2.a
	-- /* Equation 6 */
	local CPrime1 = math.sqrt((a1Prime * a1Prime) + (lab1.b * lab1.b))
	local CPrime2 = math.sqrt((a2Prime * a2Prime) + (lab2.b * lab2.b))
	-- /* Equation 7 */
	local hPrime1
	if (lab1.b == 0 and a1Prime == 0) then
		hPrime1 = 0.0
	else
		hPrime1 = math.atan2(lab1.b, a1Prime)
		--/*
		 --* This must be converted to a hue angle in degrees between 0
		 --* and 360 by addition of 2􏰏 to negative hue angles.
		 --*/
		if (hPrime1 < 0) then
			hPrime1 = hPrime1 + deg360InRad
		end
	end

	local hPrime2
	if (lab2.b == 0 and a2Prime == 0) then
		hPrime2 = 0.0
	else
		hPrime2 = math.atan2(lab2.b, a2Prime)
		--/*
		 --* This must be converted to a hue angle in degrees between 0
		 --* and 360 by addition of 2􏰏 to negative hue angles.
		 --*/
		if (hPrime2 < 0) then
			hPrime2 = hPrime2 + deg360InRad
		end
	end

	 -- * Step 2
	-- /* Equation 8 */
	local deltaLPrime = lab2.L - lab1.L
	-- /* Equation 9 */
	local deltaCPrime = CPrime2 - CPrime1
	-- /* Equation 10 */
	local deltahPrime
	local CPrimeProduct = CPrime1 * CPrime2
	if (CPrimeProduct == 0) then
		deltahPrime = 0
	else
		--/* Avoid the fabs() call */
		deltahPrime = hPrime2 - hPrime1
		if (deltahPrime < -deg180InRad) then
			deltahPrime = deltahPrime + deg360InRad
		elseif (deltahPrime > deg180InRad) then
			deltahPrime = deltahPrime - deg360InRad
		end
	end

	--/* Equation 11 */
	local deltaHPrime = 2.0 * math.sqrt(CPrimeProduct) * math.sin(deltahPrime / 2.0)

	 -- * Step 3
	-- /* Equation 12 */
	local barLPrime = (lab1.L + lab2.L) / 2.0
	-- /* Equation 13 */
	local barCPrime = (CPrime1 + CPrime2) / 2.0
	-- /* Equation 14 */
	local barhPrime
	local hPrimeSum = hPrime1 + hPrime2
	if (CPrime1 * CPrime2 == 0) then
		barhPrime = hPrimeSum
	else
		if (math.abs(hPrime1 - hPrime2) <= deg180InRad) then
			barhPrime = hPrimeSum / 2.0
		else
			if (hPrimeSum < deg360InRad) then
				barhPrime = (hPrimeSum + deg360InRad) / 2.0
			else
				barhPrime = (hPrimeSum - deg360InRad) / 2.0
			end
		end
	end

	-- /* Equation 15 */
	local T = 1.0 - (0.17 * math.cos(barhPrime - deg2Rad(30.0))) +
		(0.24 * math.cos(2.0 * barhPrime)) +
		(0.32 * math.cos((3.0 * barhPrime) + deg2Rad(6.0))) -
		(0.20 * math.cos((4.0 * barhPrime) - deg2Rad(63.0)))
	-- /* Equation 16 */
	local deltaTheta = deg2Rad(30.0) *
		math.exp(-math.pow((barhPrime - deg2Rad(275.0)) / deg2Rad(25.0), 2.0))
	-- /* Equation 17 */
	local R_C = 2.0 * math.sqrt(math.pow(barCPrime, 7.0) /
		(math.pow(barCPrime, 7.0) + pow25To7))
	-- /* Equation 18 */
	local S_L = 1 + ((0.015 * math.pow(barLPrime - 50.0, 2.0)) /
		math.sqrt(20 + math.pow(barLPrime - 50.0, 2.0)))
	-- /* Equation 19 */
	local S_C = 1 + (0.045 * barCPrime)
	-- /* Equation 20 */
	local S_H = 1 + (0.015 * barCPrime * T)
	-- /* Equation 21 */
	local R_T = (-math.sin(2.0 * deltaTheta)) * R_C

	-- /* Equation 22 */
	local deltaE = math.sqrt(
		math.pow(deltaLPrime / (k_L * S_L), 2.0) +
		math.pow(deltaCPrime / (k_C * S_C), 2.0) +
		math.pow(deltaHPrime / (k_H * S_H), 2.0) +
		(R_T * (deltaCPrime / (k_C * S_C)) * (deltaHPrime / (k_H * S_H))))

	return deltaE
end

return this
