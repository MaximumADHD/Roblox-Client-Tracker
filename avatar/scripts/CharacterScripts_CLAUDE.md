# Character Scripts

Default Lua scripts injected into every player character by the engine, controlling animation, health regeneration, and avatar unification behavior.

## When to Read This

Read this file when:
- Editing the **Animate**, **Health**, or **Unification** scripts
- Adding a new default character script
- Changing how character scripts are loaded or versioned
- Rolling out a behavioral change to an existing character script via User Flags or script forking
- Reviewing what APIs are safe to use in developer-level scripts

## Key Facts

| | |
|---|---|
| **Location** | `Client/content/avatar/scripts/` (animation, health), `Client/content/avatar/unification/` (unification) |
| **Language** | Luau |
| **Loader** | `PlayerCharacterLoader::loadHumanoidAnimationScripts()`, `Player::loadCharacterScripts()` in `Client/App/v8datamodel/src/Player.cpp` |
| **Security level** | Developer (same as game scripts — no `RobloxScriptSecurity` or `InternalTest` APIs) |
| **Override mechanism** | Developers place scripts named `Animate`, `Health`, or `Sound` in `StarterCharacterScripts` to replace defaults |
| **Feature flags** | User Flags (`FFlagUser*`) for incremental changes; C++ flags for script version selection |

## Critical Constraint: Developer-Level Execution

Character scripts run at **developer permission level** — identical to scripts written by game developers. This means:

- **Only use public APIs** — no `InternalTest`, `RobloxScriptSecurity`, or `CoreScript`-level functions
- **No `game:GetService()` calls to restricted services** — only services accessible to developer scripts
- **Code must be readable by platform developers** — these scripts serve as reference implementations that developers copy and modify
- **No hidden engine contracts** — the script must work correctly using only the documented public API surface

This is unlike CoreScripts, which run at elevated permission and can access internal APIs. If you need elevated permissions for a feature, the logic belongs in C++ or a CoreScript, not a character script.

## Implicit API Contracts

Character scripts define implicit interfaces that developers and CoreScripts rely on, even without a formal API contract. Changing these interfaces can break forks and dependent systems:

| Contract | Relied On By | Description |
|----------|-------------|-------------|
| Animation child structure | Developers (custom animation packs), `PlayerCharacterLoader` | The Animate script expects child `Animation` instances in a specific name/value format. Custom animation packs are loaded by `PlayerCharacterLoader` into this structure. Changing the expected format breaks existing animation pack assets. |
| `PlayEmote` BindableFunction | CoreScripts, C++ Humanoid, developer scripts | A `PlayEmote` BindableFunction exists as a child of the Animate script (`Character.Animate.PlayEmote`). The Animate script sets its `OnInvoke` handler. CoreScripts (EmotesMenu, chat `/e` command) and `Humanoid::playEmoteAndGetAnimTrackById` in C++ invoke it via `animateScript->findFirstChildByName("PlayEmote")`. Developers may also invoke it directly. |
| `ScaleDampeningPercent` value | `Player::loadCharacterScripts()` | The C++ loader creates/sets a `ScaleDampeningPercent` NumberValue on the Animate script. The script reads this to dampen animation speed at large character scales. |

When modifying character scripts, audit whether any implicit interfaces are changing — even if the script's own behavior is correct, consumers of these interfaces may break.

## Scripts Inventory

### Animation Scripts (`avatar/scripts/`)

| Script | Format | When Loaded | Description |
|--------|--------|-------------|-------------|
| `humanoidAnimateSAuth/humanoidAnimateSAuth.lua` | ModuleScript + Server/Client scripts | Server Authority enabled | Current animation system — state machine driven by Humanoid state attributes |
| `humanoidAnimateR15Moods.rbxm` | rbxm | R15 default (no SA, no strafing, no character controller) | Legacy R15 animation with mood support |
| `humanoidAnimateR15CharacterController.rbxm` | rbxm | `FFlag::AnimationAbilityManagerScript` true | R15 animation for Lua Character Controller |
| `humanoidR15AnimateLiveUpdates.lua` | lua | `Players.UseStrafingAnimations` true | R15 strafing animations |
| `humanoidAnimatePlayEmote.rbxm` | rbxm | R6 | Only R6 animate script — all R6 games use this regardless of other flags |

### Health Script (`avatar/scripts/`)

| Script | Format | Description |
|--------|--------|-------------|
| `humanoidHealthRegenScript.rbxmx` | rbxmx | Regenerates 1% of `MaxHealth` per second. Disabled by placing any Script named "Health" in `StarterCharacterScripts` |

### Unification Scripts (`avatar/unification/`)

Loaded when `AvatarUnificationMode` forces an R6 avatar to load as R15 (`wasR6 = true`).

**V1** (default):

| Script | Type | Purpose |
|--------|------|---------|
| `SetupAdapterParts.lua` | ModuleScript | Builds R6 adapter parts on the R15 rig |
| `AdaptInstance.lua` | ModuleScript | Instance property adaptation |
| `CharacterEmulation.lua` | LocalScript | Client-side R6 behavior emulation |
| `LocalEffects.lua` | LocalScript | Local visual effects |
| `UnificationServerScript.lua` | Script | Server-side R6 emulation |
| `UnificationScale.lua` | ModuleScript | Scale adaptation between R6/R15 |
| `MoveAdapterPartHitboxes.lua` | ModuleScript | Hitbox repositioning |

**V2** (enabled by `FFlag::UseAvatarUnificationV2`):

| Script | Type | Purpose |
|--------|------|---------|
| `v2/SetupAdapterPartsV2.lua` | ModuleScript | Improved adapter part setup |
| `v2/AdaptCharacterPropertiesAndPhysics.lua` | ModuleScript | Combined property/physics adaptation |
| `v2/R6CollisionEmulation.lua` | ModuleScript | R6 adapter part collision states matching humanoid state |
| `v2/UnificationClientScript.lua` | LocalScript | Client-side unification |
| `v2/UnificationServerScriptV2.lua` | Script | Server-side unification |

## Loading Flow

```
Player joins / LoadCharacter called
    │
    ▼
Player::loadCharacterScripts()  [Player.cpp]
    │
    ├── Clone all children from StarterCharacterScripts into character
    │       (EngineCreator permission — scripts run at developer level)
    │
    ├── Check: does StarterCharacterScripts contain "Health"?
    │       YES → skip default health script (developer override)
    │       NO  → PlayerCharacterLoader::loadHumanoidHealthScripts()
    │
    ├── Check: does StarterCharacterScripts contain "Animate"?
    │       YES → skip default animate script (developer override)
    │       NO  → PlayerCharacterLoader::loadHumanoidAnimationScripts()
    │             (selects version based on rig type + feature flags)
    │
    └── Optionally inject mood animations, unification scripts, etc.
```

The override check is **name-based**: if a developer places any `BaseScript` descendant named `"Animate"` or `"Health"` in `StarterCharacterScripts`, the corresponding default is suppressed entirely.

## Developer Forking

Developers can fork (copy and modify) any character script by placing their version in `StarterCharacterScripts`. Key implications:

1. **Forked scripts never receive updates** — once a developer copies the script, they own it permanently
2. **User Flags queried by forked scripts must remain declared indefinitely** — removing a User Flag that was `true` would regress forked copies (see [User Flag removal rules](#removing-user-flags))
3. **API changes can break forks** — any API used by character scripts has heightened backwards-compatibility requirements because forks exist in production forever
4. **Code patterns must be developer-friendly** — developers read and modify these scripts; write clear, idiomatic Luau

## Making Changes Safely

### Script Format

Prefer `.lua` (plaintext Luau) over `.rbxm` (binary Roblox model) for new or migrated character scripts. Plaintext
scripts are diff-friendly, reviewable in PRs, and editable without Studio. The existing `.rbxm` scripts are legacy —
they predate the current workflow. When adding a new script or rewriting an existing one, use `.lua`.

### Strategy 1: User Flags (Small Behavioral Changes)

User Flags are FFlags prefixed with `User` (e.g., `FFlagUserAnimateFixJumpTransition`) that are accessible from developer-level Luau via `UserSettings():IsUserFeatureEnabled()`.

**Reading a User Flag in a character script:**

```lua
local FFlagUserMyFeature
do
    local success, result = pcall(function()
        return UserSettings():IsUserFeatureEnabled("UserMyFeature")
    end)
    FFlagUserMyFeature = success and result
end
```

The `pcall` wrapper is required because `IsUserFeatureEnabled` throws if the flag doesn't exist. This happens in two important scenarios:
- **Server→client version skew**: New game server versions release weekly before all clients are updated. Character scripts replicate from server to client, so the script may reference a flag that doesn't exist on older client engine versions yet.
- **Flag cleanup**: When a flag is eventually removed from the C++ declaration, old forks still query it.

**Workflow:**

1. Declare the flag in C++ with default `false`:
   ```cpp
   FASTFLAGVARIABLE(UserMyFeature, false)
   ```
2. Add the flag-guarded behavior in the character script
3. Roll out via flag configuration (set to `true` in production)
4. After rollout stabilizes: the flag declaration must remain in C++ indefinitely if the flag was shipped as `true`, because forked scripts still query it

**When to use:** Small, contained changes — fixing a bug, tuning a threshold, enabling a new animation blend.

**Critical: never update code behind an already-shipped flag.** Once a flag-guarded code path has been introduced and merged to a release branch, it must not be updated — developers can fork the script the moment it appears in their client or Studio, regardless of flag state. If you discover a bug in code gated by `FFlagUserMyFeature`, you must:
1. Create a new flag: `FFlagUserMyFeature2`
2. Put the fixed code behind the new flag
3. Never enable the original `FFlagUserMyFeature` — buggy forks of that code path exist in the wild and you don't control them

### Strategy 2: Script Forking (Large Changes)

For large structural changes where flag-guarding every difference would be unwieldy, create a new version of the entire script and use a C++ flag to select which version loads.

**Pattern** (illustrative — see `getSAuthAnimateScriptPath()` in `PlayerCharacterLoader.cpp` for a real example):

```cpp
static std::string getMyScriptPath()
{
    // Newest flag → current script (the one being actively developed)
    if (FFlag::MyFeatureLatestChange)
        return "rbxasset://avatar/scripts/myScript.lua";
    // Previous flag → previous version (frozen, will be removed once latest is at 100%)
    if (FFlag::MyFeaturePreviousChange)
        return "rbxasset://avatar/scripts/myScript_DEPRECATED_20260601.lua";
    // Default → oldest version (baseline before any changes)
    return "rbxasset://avatar/scripts/myScript_DEPRECATED_20260501.lua";
}
```

**Workflow:**

1. Copy the current script with a `_DEPRECATED_YYYYMMDD` suffix (date of the fork)
2. Make changes in the original (unsuffixed) script — this becomes the new version
3. Add a C++ flag that selects the new version
4. Roll out the C++ flag; once at 100%, the deprecated copy can eventually be removed

**When to use:** Rewriting the animation state machine, changing the script's architecture, adding/removing child scripts.

### Strategy 3: Hybrid

Combine both approaches — fork the script for the structural change, and use User Flags within the new version for granular rollout of individual behaviors.

## Naming Conventions for Scripts Under Active Development

The `_DEPRECATED_YYYYMMDD` suffix convention is used for scripts that are under active iterative development — where multiple versions coexist temporarily during a rollout:

```
humanoidAnimateSAuth.lua                           ← current (actively developed)
humanoidAnimateSAuth_DEPRECATED_20260527.lua       ← previous version (frozen, pending removal)
humanoidAnimateSAuth_DEPRECATED_20260506.lua       ← oldest version (frozen, pending removal)
```

For most structural changes, prefer flag names that describe the new functionality being provided (e.g., `FFlag::AnimationSAVariableSpeedAnimations`) rather than opaque date suffixes. The date convention is appropriate when a script is undergoing rapid iteration and the flag name already communicates what changed.

## Removing User Flags

From the [GA User Flags](https://roblox.atlassian.net/wiki/spaces/PX/pages/1574275489/GA+User+Flags) documentation:

- **Successful flags (shipped as `true`)**: Keep the C++ declaration (`FASTFLAGVARIABLE(UserFlagName, true)`) indefinitely. Removing it would cause `IsUserFeatureEnabled` to throw in forked scripts, breaking them.
- **Failed flags (never shipped)**: Safe to remove entirely — no forked script depends on them.
- **Flag settings in the backend JSON**: DevOps has special rules preventing automatic cleanup of User Flags.

**Clean up the Lua code promptly.** After a successful flag rollout (~1 month on production), remove the flag branching from the character script itself — delete the `pcall` boilerplate and the old code path, keeping only the new behavior. This keeps the script readable for developers who may fork it. The C++ declaration stays forever, but the Lua code should not carry dead flag checks longer than necessary.

## Server Authority Animation Structure

The current SA animation system uses a multi-script architecture:

```
Character
└── Animate (ModuleScript)          ← humanoidAnimateSAuth.lua
    ├── RunAnimate.Server (Script)  ← RunContext::Server
    └── RunAnimate.Client (Script)  ← RunContext::Client
```

- **ModuleScript**: Contains the animation state machine (`module.setupAnimation()`)
- **Server Script**: Runs on server, calls into the ModuleScript
- **Client Script**: Runs on client for local prediction, calls into the same ModuleScript

Both the Server and Client scripts require the same ModuleScript, enabling shared animation logic across the network boundary.

## Gotchas

- **`StarterCharacterScripts` override is name-based, not type-based** — any `BaseScript` descendant named "Animate" suppresses the default, even if it's empty or a completely different script type
- **Scripts are cloned with `EngineCreator`** — this grants the clone the same instance-creation privileges but does NOT elevate the Luau security context
- **Health script is only loaded in-game** — thumbnail rendering skips `loadHumanoidHealthScripts()`
- **User Flags must be wrapped in pcall** — `IsUserFeatureEnabled` throws for undefined flags; the pcall pattern is mandatory
- **Forked scripts see flag removal as `false`** — if `IsUserFeatureEnabled("UserFoo")` throws (flag removed), the pcall returns `false`, which means the feature appears off in old forks. Design changes to be safe when the flag reads as `false` after removal (forward-compatible)
- **Don't use `game:GetService("CoreGui")` or restricted services** — character scripts run at developer level; restricted service access will error
- **Animation script changes affect both server and client** — with Server Authority, the Animate ModuleScript runs in both contexts; test both paths

## Testing

Animation script changes should be tested with:
- R6 and R15 rigs
- Server Authority enabled and disabled
- A game with `StarterCharacterScripts` containing a forked Animate script (verify the fork still works independently)
- The strafing and character controller variants if touching shared animation logic

## Related Docs

- [`PlayerCharacterLoader_CLAUDE.md`](../../../App/v8datamodel/PlayerCharacterLoader_CLAUDE.md) — C++ character spawn pipeline, script injection logic
- [`Client/App/avatar/CLAUDE.md`](../../../App/avatar/CLAUDE.md) — Avatar system overview
- [GA User Flags (Confluence)](https://roblox.atlassian.net/wiki/spaces/PX/pages/1574275489/GA+User+Flags) — User Flag workflow, adding/removing flags
- [`Client/Schema/docs/reference/engine/classes/StarterCharacterScripts.md`](../../../Schema/docs/reference/engine/classes/StarterCharacterScripts.md) — Public API documentation for StarterCharacterScripts
