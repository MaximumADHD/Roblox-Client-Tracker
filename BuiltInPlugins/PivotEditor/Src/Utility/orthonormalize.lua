-- Code transcribed from G3D::Matrix3::orthonormalize()
-- TODO: Replace this when the CFrame:Orthonormalize() API proposal goes live.
return function(cframe)
    -- Algorithm uses Gram-Schmidt orthogonalization.  If 'this' matrix is
    -- M = [m0|m1|m2], then orthonormal output matrix is Q = [q0|q1|q2],
    --
    --   q0 = m0/|m0|
    --   q1 = (m1-(q0*m1)q0)/|m1-(q0*m1)q0|
    --   q2 = (m2-(q0*m2)q0-(q1*m2)q1)/|m2-(q0*m2)q0-(q1*m2)q1|
    --
    -- where |V| indicates length of vector V and A*B indicates dot
    -- product of vectors A and B.

	local x, y, z,
		elt00, elt01, elt02,
		elt10, elt11, elt12,
		elt20, elt21, elt22 = cframe:GetComponents()

	local fInvLength = 1.0 / math.sqrt(elt00 * elt00 + elt10 * elt10 + elt20 * elt20)

	elt00 *= fInvLength
	elt10 *= fInvLength
	elt20 *= fInvLength

	-- compute q1
	local fDot0 = elt00 * elt01 + elt10 * elt11 + elt20 * elt21

	elt01 -= fDot0 * elt00
	elt11 -= fDot0 * elt10
	elt21 -= fDot0 * elt20

	fInvLength = 1.0 / math.sqrt(elt01 * elt01 + elt11 * elt11 + elt21 * elt21)

	elt01 *= fInvLength
	elt11 *= fInvLength
	elt21 *= fInvLength

	-- compute q2
	local fDot1 = elt01 * elt02 + elt11 * elt12 + elt21 * elt22

	fDot0 = elt00 * elt02 + elt10 * elt12 + elt20 * elt22

	elt02 -= fDot0 * elt00 + fDot1 * elt01
	elt12 -= fDot0 * elt10 + fDot1 * elt11
	elt22 -= fDot0 * elt20 + fDot1 * elt21

	fInvLength = 1.0 / math.sqrt(elt02 * elt02 + elt12 * elt12 + elt22 * elt22)

	elt02 *= fInvLength
	elt12 *= fInvLength
	elt22 *= fInvLength

	return CFrame.new(x, y, z, elt00, elt01, elt02, elt10, elt11, elt12, elt20, elt21, elt22)
end