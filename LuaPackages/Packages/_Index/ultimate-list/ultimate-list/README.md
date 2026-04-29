# UltimateList
A library to declaratively create virtualized lists in Roblox React.

Read the documentation [**here**](https://kampfkarren.github.io/ultimate-list).

## Example usage
```luau
return React.createElement(UltimateList.Components.ScrollingFrame, {
    dataSource = UltimateList.DataSources.array(letters),

    dimensions = UltimateList.Dimensions.consistentSize(48),

    renderer = UltimateList.Renderers.byState(function(value)
        return React.createElement("TextLabel", {
            BackgroundColor3 = Color3.new(1, 1, 1),
            Font = Enum.Font.BuilderSansBold,
            Text = value,
            TextColor3 = Color3.new(0, 0, 0),
            TextSize = 36,
            Size = UDim2.fromScale(1, 1),
        })
    end),

    direction = "y",
})
```

## Installation
UltimateList is available on Wally under [`kampfkarren/ultimate-list`](https://wally.run/package/kampfkarren/ultimate-list).
