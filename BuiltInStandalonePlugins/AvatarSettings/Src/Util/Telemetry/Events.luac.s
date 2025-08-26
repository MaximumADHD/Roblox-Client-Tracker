MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFIntAvatarSettingsDefaultThrottle"]
  CALL R2 1 1
  CALL R2 0 1
  NEWTABLE R3 0 0
  NEWTABLE R4 0 7
  NEWTABLE R5 0 2
  LOADK R6 K11 ["AccessorySoundToggled"]
  LOADK R7 K12 ["Counter to track whether accessories sound enabled is toggled. Additional fields: enabled = [true, false]"]
  SETLIST R5 R6 2 [1]
  NEWTABLE R6 0 2
  LOADK R7 K13 ["AccessoryVFXToggled"]
  LOADK R8 K14 ["Counter to track whether accessories vfx enabled is toggled. Additional fields: enabled = [true, false]"]
  SETLIST R6 R7 2 [1]
  NEWTABLE R7 0 2
  LOADK R8 K15 ["AvatarTypeMenuOpened"]
  LOADK R9 K16 ["Counter to track avatar type dropdown opens"]
  SETLIST R7 R8 2 [1]
  NEWTABLE R8 0 2
  LOADK R9 K17 ["PreviewToggled"]
  LOADK R10 K18 ["Counter to track preview button toggles"]
  SETLIST R8 R9 2 [1]
  NEWTABLE R9 0 2
  LOADK R10 K19 ["RevertChangesPressed"]
  LOADK R11 K20 ["Counter to track revert changes button presses"]
  SETLIST R9 R10 2 [1]
  NEWTABLE R10 0 2
  LOADK R11 K21 ["SaveChangesPressed"]
  LOADK R12 K22 ["Counter to track save changes button presses"]
  SETLIST R10 R11 2 [1]
  NEWTABLE R11 0 2
  LOADK R12 K23 ["SwitchedToTab"]
  LOADK R13 K24 ["Counter to track category tab switching. Additional fields: tabName = [General, Body, Clothing,  Accessories, Movement]"]
  SETLIST R11 R12 2 [1]
  SETLIST R4 R5 7 [1]
  NEWTABLE R5 0 13
  NEWTABLE R6 0 3
  LOADK R7 K25 ["AccessoriesLimitMethod"]
  LOADK R8 K26 ["limitMethod"]
  LOADK R9 K27 ["Scale, Remove"]
  SETLIST R6 R7 3 [1]
  NEWTABLE R7 0 3
  LOADK R8 K28 ["AccessoryCustomLimitMode"]
  LOADK R9 K29 ["accessoryCustomLimitMode"]
  LOADK R10 K30 ["PlayerChoice, CustomLimit"]
  SETLIST R7 R8 3 [1]
  NEWTABLE R8 0 3
  LOADK R9 K31 ["AnimationClipsMode"]
  LOADK R10 K32 ["animationClipsMode"]
  LOADK R11 K33 ["PlayerChoice, CustomClips"]
  SETLIST R8 R9 3 [1]
  NEWTABLE R9 0 3
  LOADK R10 K34 ["AnimationPacksMode"]
  LOADK R11 K35 ["animationPacksMode"]
  LOADK R12 K36 ["PlayerChoice, StandardR15, StandardR6"]
  SETLIST R9 R10 3 [1]
  NEWTABLE R10 0 3
  LOADK R11 K37 ["AppearanceMode"]
  LOADK R12 K38 ["appearanceMode"]
  LOADK R13 K39 ["PlayerChoice, CustomParts"]
  SETLIST R10 R11 3 [1]
  NEWTABLE R11 0 3
  LOADK R12 K40 ["AvatarType"]
  LOADK R13 K41 ["avatarType"]
  LOADK R14 K42 ["R15, R6, PlayerChoice"]
  SETLIST R11 R12 3 [1]
  NEWTABLE R12 0 3
  LOADK R13 K43 ["BuildMode"]
  LOADK R14 K44 ["buildMode"]
  LOADK R15 K45 ["PlayerChoice, CustomBuild"]
  SETLIST R12 R13 3 [1]
  NEWTABLE R13 0 3
  LOADK R14 K46 ["ClothingCustomLimitMode"]
  LOADK R15 K47 ["clothingCustomLimitMode"]
  LOADK R16 K30 ["PlayerChoice, CustomLimit"]
  SETLIST R13 R14 3 [1]
  NEWTABLE R14 0 3
  LOADK R15 K48 ["CollisionMode"]
  LOADK R16 K49 ["mode"]
  LOADK R17 K50 ["Default, SingleCollider, Legacy"]
  SETLIST R14 R15 3 [1]
  NEWTABLE R15 0 3
  LOADK R16 K51 ["CustomAccessoryMode"]
  LOADK R17 K52 ["customAccessoryMode"]
  LOADK R18 K53 ["PlayerChoice, CustomAccessories"]
  SETLIST R15 R16 3 [1]
  NEWTABLE R16 0 3
  LOADK R17 K54 ["CustomClothingMode"]
  LOADK R18 K47 ["clothingCustomLimitMode"]
  LOADK R19 K55 ["PlayerChoice, CustomClothing"]
  SETLIST R16 R17 3 [1]
  NEWTABLE R17 0 3
  LOADK R18 K56 ["Preset"]
  LOADK R19 K57 ["presetType"]
  LOADK R20 K58 ["PlayerChoice, ConsistentGameplay"]
  SETLIST R17 R18 3 [1]
  NEWTABLE R18 0 3
  LOADK R19 K59 ["ScaleMode"]
  LOADK R20 K60 ["scaleMode"]
  LOADK R21 K61 ["PlayerChoice, CustomScale"]
  SETLIST R18 R19 3 [1]
  SETLIST R5 R6 13 [1]
  DUPTABLE R6 K66 [{"throttlingPercentage", "lastUpdated", "backends", "links"}]
  SETTABLEKS R2 R6 K62 ["throttlingPercentage"]
  NEWTABLE R7 0 3
  LOADN R8 233
  LOADN R9 8
  LOADN R10 14
  SETLIST R7 R8 3 [1]
  SETTABLEKS R7 R6 K63 ["lastUpdated"]
  NEWTABLE R7 0 1
  LOADK R8 K67 ["RobloxTelemetryCounter"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K64 ["backends"]
  LOADK R7 K68 ["https://grafana.rbx.com/d/feutjrfrb5kw0b/avatar-settings-plugin-telemetry?orgId=1"]
  SETTABLEKS R7 R6 K65 ["links"]
  MOVE R7 R5
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL1 TABLE_UNPACK R11 [+3]
  MOVE R13 R11
  GETIMPORT R12 K71 [table.unpack]
  CALL R12 1 3
  MOVE R16 R12
  LOADK R17 K72 ["Selected"]
  CONCAT R15 R16 R17
  GETTABLEKS R17 R1 K73 ["Dictionary"]
  GETTABLEKS R16 R17 K74 ["join"]
  MOVE R17 R6
  DUPTABLE R18 K76 [{"description"}]
  GETIMPORT R19 K79 [string.format]
  LOADK R20 K80 ["Counter to track %s selections. Additional fields: %s: [%s]"]
  MOVE R21 R12
  MOVE R22 R13
  MOVE R23 R14
  CALL R19 4 1
  SETTABLEKS R19 R18 K75 ["description"]
  CALL R16 2 1
  SETTABLE R16 R3 R15
  FORGLOOP R7 2 [-26]
  MOVE R7 R4
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL1 TABLE_UNPACK R11 [+3]
  MOVE R13 R11
  GETIMPORT R12 K71 [table.unpack]
  CALL R12 1 2
  GETTABLEKS R15 R1 K73 ["Dictionary"]
  GETTABLEKS R14 R15 K74 ["join"]
  MOVE R15 R6
  DUPTABLE R16 K76 [{"description"}]
  SETTABLEKS R13 R16 K75 ["description"]
  CALL R14 2 1
  SETTABLE R14 R3 R12
  FORGLOOP R7 2 [-16]
  RETURN R3 1
