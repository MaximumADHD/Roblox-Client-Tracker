## Overview

This provider is used to provide details about the [LayerCollector](https://create.roblox.com/docs/reference/engine/classes/LayerCollector) a component is parented to, so that it does not need to take these values in as props.

Currently, the only value this provider provides right now is the layer collectors `absoluteSize` - often referenced as **screenSize* as a more human-readable name. The component is named generically to provide more values related to the containing `LayerCollector`, should there be a need.

## How to Use

There are two ways to access the values that the `LayerCollectorProvider` provides: `withLayerCollectorProvider` and `useLayerCollector`. The former is for class components and the latter is for functional components.

```lua
	Roact.createElement(LayerCollectorProvider, {}, {
		Content = withLayerCollectorProvider(function(layerCollector)
			local screenSize = layerCollector.absoluteSize
			-- Now the component has access to screen size outside of props
		end),
	})
```

We recommend adding a `LayerCollectorProvider` fairly high up the tree and close to where your `LayerCollector` is defined, as often times UI components are in the same GUI, and it is not necessary to wrap each element that requires a reference to the screen size in their own provider.