--Stravant + Stickmasterluke



function sineStyleTween(t)
	return math.cos(t*math.pi)*-.5+.5
end


function percentCFrame(cf,cfscale)
	if cf then
		local ax,ay,az=cf:toEulerAnglesXYZ()
		return CFrame.new(cf.p*cfscale)*CFrame.Angles(ax*cfscale,ay*cfscale,az*cfscale)
	else
		return CFrame.new(0,0,0)
	end
end

do
	local fromAxisAngle = CFrame.fromAxisAngle
	local components = CFrame.new().components
	local inverse = CFrame.new().inverse
	local v3 = Vector3.new
	local acos = math.acos
	local sqrt = math.sqrt
	local invroot2 = 1/math.sqrt(2)
	function percentCFrames(c0,c1,t,sinestyle)
		local t = sinestyle and sineStyleTween(t) or t
		if not c0 or not c1 or not t then
			return CFrame.new(0,0,0)
		end
		local _,_,_,xx,yx,zx,xy,yy,zy,xz,yz,zz=components(inverse(c0)*c1)
		local cosTheta = (xx + yy + zz - 1)/2
		local rotationAxis = v3(yz-zy, zx-xz, xy-yx)
		local positionDelta = (c1.p - c0.p)
		local theta;			
		if cosTheta >= 0.999 then
			return c0+positionDelta*t
		elseif cosTheta <= -0.999 then
			theta = math.pi
			xx = (xx + 1) / 2
			yy = (yy + 1) / 2
			zz = (zz + 1) / 2
			if xx > yy and xx > zz then
				if xx < 0.001 then
					rotationAxis = v3(0, invroot2, invroot2)
				else
					local x = sqrt(xx)
					xy = (xy + yx) / 4
					xz = (xz + zx) / 4
					rotationAxis = v3(x, xy/x, xz/x)
				end
			elseif yy > zz then
				if yy < 0.001 then
					rotationAxis = v3(invroot2, 0, invroot2)
				else
					local y = sqrt(yy)
					xy = (xy + yx) / 4
					yz = (yz + zy) / 4
					rotationAxis = v3(xy/y, y, yz/y)
				end	
			else
				if zz < 0.001 then
					rotationAxis = v3(invroot2, invroot2, 0)
				else
					local z = sqrt(zz)
					xz = (xz + zx) / 4
					yz = (yz + zy) / 4
					rotationAxis = v3(xz/z, yz/z, z)
				end
			end
		else
			theta = acos(cosTheta)
		end
		return c0*fromAxisAngle(rotationAxis, theta*t) + positionDelta*t
	end
end

function slerp(v1,v2,t)
	local dot = math.min(1,math.max(-1,v1:Dot(v2)))
	local theta = math.acos(dot)*t
	local RelativeVec = (v2-v1*dot).unit
	return (v1*math.cos(theta))+(RelativeVec*math.sin(theta))
end


return percentCFrames		--percentcframes(c0,c1,t,sinestyle)






