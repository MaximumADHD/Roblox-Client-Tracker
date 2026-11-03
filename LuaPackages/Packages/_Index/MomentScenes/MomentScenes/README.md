# MomentScenes

Shared scene-building package for Live 3D Moments. Both **lua-apps** (the Moments feed) and **rcc-jobs-lua-scripts** (thumbnail generation) depend on this package to create, play, and capture 3D moment scenes.

## Architecture

```
MomentScenes repo (this package)
├── Types             — SceneSpec, MomentScene, SceneBuilder
├── builders          — static type → builder map (the registry; internal)
├── createMomentScene — builds one scene from a spec        ← host-facing
├── Builders/         — scene recipes + shared builder helpers
│   ├── _Utils/       — helpers no single scene type owns (`_` sorts first in explorer)
│   │   ├── cameraPath        (builder-only, as is everything in _Utils)
│   │   ├── avatarFloorPosition
│   │   ├── frameCamera
│   │   ├── avatarBackground
│   │   ├── backgroundCatalog  (preview/test display names, not published)
│   │   ├── avatarRig
│   │   ├── createPlayhead
│   │   └── loadAsset
│   └── AvatarMoment/ — recipe plus its own presentation helpers
│       ├── init.lua
│       ├── resolveOutfit.lua
│       ├── addKeyLight.lua
│       ├── addFallbackBackdrop.lua
│       └── mockOutfits.lua       (preview/test fixture, not published)
├── Testing/          — test-only helpers (not published)
│   └── makeR15Dummy
└── …                 — parseSceneAsset, …
```

## Usage

### lua-apps (presenter)

```lua
local MomentScenes = require(Packages.MomentScenes)

local wrapper = InsertService:LoadAsset(sceneAssetId)
local parsed = MomentScenes.parseSceneAsset(wrapper)
-- parsed.type is optional, createMomentScene's is not — see SceneSpec below.
local scene = MomentScenes.createMomentScene({
	type = parsed.type or DEFAULT_SCENE_TYPE,
	args = parsed.args,
})

scene.root.Parent = worldModel
viewport.CurrentCamera = scene.camera
-- play() comes from the media node, not the presenter
```

### RCC (thumbnailer)

```lua
local MomentScenes = require(Packages.MomentScenes)

local wrapper = InsertService:LoadAsset(sceneAssetId)
local parsed = MomentScenes.parseSceneAsset(wrapper)
local scene = MomentScenes.createMomentScene({
	type = parsed.type or jobSceneType,
	args = parsed.args,
})

scene.root.Parent = Workspace
workspace.CurrentCamera = scene.camera
scene.playhead.seek(stillTime) -- pose for capture, applied in this frame
-- host: Lighting, ThumbnailGenerator
scene.dispose()
```

## Key Contracts

### SceneSpec

```lua
type SceneSpec = { type: string, args: any }
type ParsedSceneAsset = { type: string?, args: { [string]: any } }
```

The dispatcher does not inspect `args`. Only the registered builder for `type` knows the shape.

`parseSceneAsset` returns `ParsedSceneAsset`, not `SceneSpec`: an authored asset may leave `Type` out for the job to supply. Resolve `type` before calling `createMomentScene`.

### Resolution — who turns what into what

**Asset rule:** a MomentScene asset holds only **primitives or values an engine API can resolve** — numbers, strings, `Color3`, asset IDs. Never a value that needs a web service call to become useful.

That rule is what keeps hosts out of the resolution business, so it is a convention worth defending rather than an observation about today's recipes. Everything below follows from it.

| Layer | Input → output | Job |
|---|---|---|
| Unpacker | asset Instance → `args` | Structural only. `parseSceneAsset` is the default; a builder may ship its own. |
| Builder | `args` → `MomentScene` | All resolution, using engine APIs (`Players:GetHumanoidDescriptionFromOutfitIdAsync`, `Players:GetHumanoidDescriptionFromUserIdAsync`, `AvatarEditorService:GetOutfitDetailsAsync`, `Players:GetCharacterAppearanceInfoAsync`, `InsertService:LoadAsset`, `Players:CreateHumanoidModelFromDescriptionAsync`, `Animator:LoadAnimation`). |

**Hosts do no per-type work.** They unpack and dispatch. A host never learns what `AvatarMoment` wants, never branches on `type` to prepare arguments, and picks up a new scene type without changing. If a host ever needs bespoke per-type logic before calling a builder, something above has gone wrong.

**`args` are serializable — primitives only.** No `Instance` references, no Enums, no `HumanoidDescription`. This is not style: args arrive two ways, unpacked from an asset *or* handed over directly, and the second path has no asset to unpack. Unit tests, pre-publish flows, and an RCC job receiving args over the wire all take it. If a builder required a `HumanoidDescription`, every caller on that path would have to construct one first — exactly the per-caller resolution the design exists to remove. So an avatar crosses as an outfit ID or a user ID, a background as an asset ID, an emote as an asset ID.

The cost of taking an id is that it has to exist: `AvatarMoment` cannot render a bespoke, unsaved appearance. That is accepted. An outfit id and a user id each have an engine API that resolves straight to a `HumanoidDescription`, so taking one keeps every arg a plain value and deletes the parsing layer a serialized appearance would need. Looks do not have that property. Supply one of `outfitId` or `userId`; `0` is absent, and both set is an error. `userId` is behind `MomentScenesAvatarMomentUserId` (default off). While that flag is off, a `userId` is ignored and `outfitId` stays required.

**Why not have builders take the asset directly?** Because the asset is one source of args, not the only one. A builder that demanded an asset could not be called from a test or a pre-publish flow.

### MomentScene

```lua
type Playhead = {
    play: () -> (),
    pause: () -> (),
    dispose: () -> (),
    getIsPlaying: () -> boolean,
    getPosition: () -> number,
    getDuration: () -> number,
    seek: (offset: number) -> (),
}

type MomentScene = {
    root: Model,
    camera: Camera,
    playhead: Playhead,
    capabilities: { canUserToggle: boolean, hasDuration: boolean },
    dispose: () -> (),
}
```

Hosts tear down with `scene.dispose()` and nothing else. Destroying `scene.root` directly leaves the playhead's Heartbeat connection driving instances that no longer exist.

**`dispose()` is destroy, not "stop showing this".** A host leaving a tab, or scrolling a scene out of the live slot, should `pause()` and keep the scene warm for the return. `pause()` freezes the playhead and keeps its tracks, so `play()` and `seek()` still work afterwards; disposing to leave a surface throws away work the host is about to need again.

`pause()` is not a full release, though. It stops the scene, not the host: a Workspace host is still writing `CurrentCamera` and `Lighting` after it, so it also has to give up the stage when the feed is not the live surface — the same visibility gate video uses. That part is the host's job, not the scene's, and it is not something a scene can opt out of. Note also that system pause and user transport are different callers: the host may `pause()` whenever the scene is not the thing on screen, regardless of what `capabilities.canUserToggle` says.

Every builder returns this shape. Hosts follow `scene.camera` and drive `scene.playhead` — they never invent a shot.

Rigs are already solved when a scene is handed over: `avatarRig.createAvatar` settles the joints during build, so framing measures a real avatar and a host does not have to mount anything first for the shot to be correct.

### TODO: `scene.mount(parent)`

Not built. Hosts currently parent `scene.root` themselves.

The open case for it is **aspect ratio**. `frameCamera.DEFAULT_ASPECT` is a hardcoded `9/16` — the conservative floor, since a wider viewport shows more margin rather than cropping. The real value lives on the `ViewportFrame` a host mounts into, which is reachable from the mount parent and knowable nowhere else. Joint solving used to be the other motivation and no longer is.

Shape would be `mount(parent)` rather than a separate `onMounted()` hook, so parenting and the logic that depends on it cannot come apart — there is no "did the host remember to call it" state for recipes to branch on.

The thing to settle first: hosts have parenting logic of their own that this would have to absorb or coexist with. The lua-apps `parentMomentScene` exists because React-owned `WorldModel`s destroy their children on unmount — framework knowledge that does not belong in a host-agnostic package.

## Adding a Scene Type

1. Create `src/Builders/YourType/init.lua` implementing `(args) -> MomentScene`
2. Co-locate helpers specific to your scene type under that folder; anything a second scene type would use unchanged goes in `Builders/_Utils/` and stays there — `init.lua` exports only what a host calls
3. Load catalog / mesh assets with `Builders/_Utils/loadAsset` — never `InsertService:LoadAsset`, never a loader field on `args`. See [`src/Builders/AGENTS.md`](src/Builders/AGENTS.md)
4. Add the builder to the static map in `src/builders.lua`
5. Follow authoring rules: build at origin, don't touch Lighting/CurrentCamera, parent Camera under `root`

## Development

```bash
# Install tooling (lest, rbx-aged-cli, rotrieve, selene, stylua)
foreman install

# Install packages (Jest)
rotrieve install

# Run tests
lest

# Static analysis (lint + type check)
selene src
stylua -c src
rbx-aged-cli run robloxdev-cli -- analyze --project default.rbxp
```

### Editor Setup

The repo includes `.vscode/settings.json` that configures the [luau-lsp](https://marketplace.visualstudio.com/items?itemName=JohnnyMorganz.luau-lsp) extension to auto-generate a sourcemap from `preview/MomentScenes-preview.rbxp`. That project includes the package (`Packages.MomentScenes` → `src/`), `Packages/` (including React/Foundation), and the preview UI — so requires resolve for both package and preview editing.

`default.rbxp` remains the lest / CI analyze project (package + Jest only).

Prerequisites: the **Luau LSP** extension and `robloxdev-cli` (via `foreman install` / `rbx-aged-cli`, or a local install on `PATH`).

Recommended extensions:

- [Luau Language Server](https://marketplace.visualstudio.com/items?itemName=JohnnyMorganz.luau-lsp)
- [StyLua](https://marketplace.visualstudio.com/items?itemName=JohnnyMorganz.stylua)

### Preview in Studio

Open `preview/MomentScenes-preview.rbxp` in Roblox Studio and hit Play. The preview
panel is Foundation + React (`preview/PreviewRunner/`) and uses **dev-only** deps
(`React`, `ReactRoblox`, `Foundation` in `[dev_dependencies]`). Those never ship
with the published package (`content_root = "src"`).

```bash
rotrieve install   # pulls Jest + React + Foundation into Packages/Dev
```

### CI Secrets

For GitHub Actions to work, request these secrets via a PR similar to <https://github.rbx.com/Roblox/github-config/pull/458>:

- `TOKENS_APP_LUA_ECOSYSTEM_DEPENDENCIES_ID`
- `TOKENS_APP_LUA_ECOSYSTEM_DEPENDENCIES_KEY`

See <https://roblox.atlassian.net/wiki/spaces/APT/pages/1820955184> for details.

Publish to the Rotriever registry with the **Publish Rotriever Package** workflow (`workflow_dispatch`).

## Authoring Rules

- Build a contained Model at origin. Set `root.WorldPivot = CFrame.new()`.
- Key light, floor, backdrop — all inside the model as parts.
- Parent an authored Camera under `root` with a properly framed CFrame.
- Do NOT touch Workspace singletons (Lighting, CurrentCamera, SoundService).
- Do NOT assume exclusive DataModel access.
- Do NOT call `InsertService:LoadAsset` from a builder. Use `_Utils/loadAsset`.
