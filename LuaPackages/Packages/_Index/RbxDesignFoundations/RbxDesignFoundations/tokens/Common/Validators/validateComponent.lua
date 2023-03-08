return function(t)
	return {
		VerticalTile = t.strictInterface({
			Base = t.strictInterface({
				Container = t.strictInterface({
					Background = t.Color3,
					BorderWidth = t.number,
					BorderColor = t.Color3,
					DropShadow = t.strictInterface({
						X = t.number,
						Y = t.number,
						Blur = t.number,
						Color = t.Color3,
					}),
					BorderRadius = t.strictInterface({
						LeadingTop = t.number,
						TrailingTop = t.number,
						TrailingBottom = t.number,
						LeadingBottom = t.number,
					}),
				}),
				ContentTop = t.strictInterface({
					Spacing = t.strictInterface({
						Top = t.number,
						Trailing = t.number,
						Bottom = t.number,
						Leading = t.number,
					}),
				}),
				ContentBottom = t.strictInterface({
					Spacing = t.strictInterface({
						Top = t.number,
						Trailing = t.number,
						Bottom = t.number,
						Leading = t.number,
					}),
				}),
			}),
		}),
	}
end
