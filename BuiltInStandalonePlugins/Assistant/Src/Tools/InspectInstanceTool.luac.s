PROTO_0:
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["UniqueId"]
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  NAMECALL R1 R0 K0 ["GetChildren"]
  CALL R1 1 1
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADNIL R8
  GETIMPORT R9 K2 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE REF R8
  CAPTURE VAL R7
  CALL R9 1 1
  JUMPIF R9 [+1]
  LOADNIL R8
  DUPTABLE R12 K8 [{"name", "className", "path", "childCount", "uniqueId"}]
  GETTABLEKS R13 R7 K9 ["Name"]
  SETTABLEKS R13 R12 K3 ["name"]
  GETTABLEKS R13 R7 K10 ["ClassName"]
  SETTABLEKS R13 R12 K4 ["className"]
  NAMECALL R13 R7 K11 ["GetFullName"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K5 ["path"]
  NAMECALL R14 R7 K0 ["GetChildren"]
  CALL R14 1 1
  LENGTH R13 R14
  SETTABLEKS R13 R12 K6 ["childCount"]
  SETTABLEKS R8 R12 K7 ["uniqueId"]
  FASTCALL2 TABLE_INSERT R2 R12 [+4]
  MOVE R11 R2
  GETIMPORT R10 K14 [table.insert]
  CALL R10 2 0
  CLOSEUPVALS R8
  FORGLOOP R3 2 [-39]
  DUPTABLE R3 K18 [{"immediateChildren", "totalDescendants", "childrenCount"}]
  SETTABLEKS R2 R3 K15 ["immediateChildren"]
  NAMECALL R5 R0 K19 ["GetDescendants"]
  CALL R5 1 1
  LENGTH R4 R5
  SETTABLEKS R4 R3 K16 ["totalDescendants"]
  LENGTH R4 R1
  SETTABLEKS R4 R3 K17 ["childrenCount"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetFullName"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["JSONEncode"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["string"] [+16]
  LENGTH R3 R0
  GETUPVAL R4 0
  JUMPIFNOTLE R3 R4 [+3]
  MOVE R2 R0
  RETURN R2 1
  LOADN R7 1
  GETUPVAL R8 0
  NAMECALL R5 R0 K3 ["sub"]
  CALL R5 3 1
  MOVE R3 R5
  LOADK R4 K4 ["... (truncated)"]
  CONCAT R2 R3 R4
  RETURN R2 1
  JUMPIFEQKS R1 K5 ["number"] [+3]
  JUMPIFNOTEQKS R1 K6 ["boolean"] [+2]
  RETURN R0 1
  JUMPIFNOTEQKS R1 K7 ["Instance"] [+11]
  GETIMPORT R2 K9 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R2 1 2
  JUMPIFNOT R2 [+2]
  MOVE R4 R3
  RETURN R4 1
  LOADK R4 K10 ["[Destroyed Instance]"]
  RETURN R4 1
  JUMPIFNOTEQKS R1 K11 ["table"] [+16]
  GETIMPORT R2 K9 [pcall]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R2 1 2
  JUMPIFNOT R2 [+6]
  LENGTH R5 R3
  GETUPVAL R6 2
  JUMPIFNOTLE R5 R6 [+3]
  MOVE R4 R3
  RETURN R4 1
  LOADK R4 K12 ["[Complex Table]"]
  RETURN R4 1
  JUMPIFNOTEQKS R1 K13 ["CFrame"] [+37]
  GETTABLEKS R2 R0 K14 ["Position"]
  NAMECALL R3 R0 K15 ["GetComponents"]
  CALL R3 1 12
  DUPTABLE R15 K17 [{"Position", "Rotation"}]
  LOADK R17 K18 ["%*, %*, %*"]
  GETTABLEKS R19 R2 K19 ["X"]
  GETTABLEKS R20 R2 K20 ["Y"]
  GETTABLEKS R21 R2 K21 ["Z"]
  NAMECALL R17 R17 K22 ["format"]
  CALL R17 4 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K14 ["Position"]
  LOADK R17 K23 ["%*, %*, %*, %*, %*, %*, %*, %*, %*"]
  MOVE R19 R6
  MOVE R20 R7
  MOVE R21 R8
  MOVE R22 R9
  MOVE R23 R10
  MOVE R24 R11
  MOVE R25 R12
  MOVE R26 R13
  MOVE R27 R14
  NAMECALL R17 R17 K22 ["format"]
  CALL R17 10 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K16 ["Rotation"]
  RETURN R15 1
  JUMPIFNOTEQKS R1 K24 ["Vector3"] [+13]
  LOADK R3 K18 ["%*, %*, %*"]
  GETTABLEKS R5 R0 K19 ["X"]
  GETTABLEKS R6 R0 K20 ["Y"]
  GETTABLEKS R7 R0 K21 ["Z"]
  NAMECALL R3 R3 K22 ["format"]
  CALL R3 4 1
  MOVE R2 R3
  RETURN R2 1
  JUMPIFNOTEQKS R1 K25 ["Vector2"] [+11]
  LOADK R3 K26 ["%*, %*"]
  GETTABLEKS R5 R0 K19 ["X"]
  GETTABLEKS R6 R0 K20 ["Y"]
  NAMECALL R3 R3 K22 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  RETURN R2 1
  JUMPIFNOTEQKS R1 K27 ["Color3"] [+13]
  LOADK R3 K18 ["%*, %*, %*"]
  GETTABLEKS R5 R0 K28 ["R"]
  GETTABLEKS R6 R0 K29 ["G"]
  GETTABLEKS R7 R0 K30 ["B"]
  NAMECALL R3 R3 K22 ["format"]
  CALL R3 4 1
  MOVE R2 R3
  RETURN R2 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K32 [tostring]
  CALL R2 1 1
  RETURN R2 1

PROTO_5:
  GETIMPORT R1 K1 [pcall]
  GETTABLEKS R2 R0 K2 ["GetAttributes"]
  MOVE R3 R0
  CALL R1 2 2
  JUMPIFNOT R1 [+6]
  JUMPIFNOT R2 [+5]
  GETIMPORT R3 K4 [next]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIF R3 [+2]
  LOADNIL R3
  RETURN R3 1
  NEWTABLE R3 0 0
  GETIMPORT R4 K6 [pairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETUPVAL R9 0
  MOVE R10 R8
  CALL R9 1 1
  SETTABLE R9 R3 R7
  FORGLOOP R4 2 [-5]
  RETURN R3 1

PROTO_6:
  GETUPVAL R3 0
  MOVE R4 R1
  CALL R3 1 1
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K2 ["CFrame"] [+14]
  MOVE R5 R0
  LOADK R6 K3 [".Position"]
  CONCAT R4 R5 R6
  GETTABLEKS R5 R3 K4 ["Position"]
  SETTABLE R5 R2 R4
  MOVE R5 R0
  LOADK R6 K5 [".Rotation"]
  CONCAT R4 R5 R6
  GETTABLEKS R5 R3 K6 ["Rotation"]
  SETTABLE R5 R2 R4
  RETURN R0 0
  SETTABLE R3 R2 R0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["GetPropertyNames"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  RETURN R0 1

PROTO_9:
  GETUPVAL R1 0
  JUMPIF R1 [+3]
  NEWTABLE R1 0 0
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["ClassName"]
  GETIMPORT R2 K2 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIFNOT R2 [+1]
  JUMPIF R3 [+3]
  NEWTABLE R4 0 0
  RETURN R4 1
  NEWTABLE R4 0 0
  MOVE R5 R3
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R11 1
  GETTABLE R10 R11 R9
  JUMPIF R10 [+33]
  GETIMPORT R10 K2 [pcall]
  NEWCLOSURE R11 P1
  CAPTURE VAL R0
  CAPTURE VAL R9
  CALL R10 1 2
  JUMPIFNOT R10 [+26]
  JUMPIFEQKNIL R11 [+25]
  GETUPVAL R12 2
  MOVE R13 R11
  CALL R12 1 1
  FASTCALL1 TYPEOF R11 [+3]
  MOVE R14 R11
  GETIMPORT R13 K4 [typeof]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K5 ["CFrame"] [+14]
  MOVE R14 R9
  LOADK R15 K6 [".Position"]
  CONCAT R13 R14 R15
  GETTABLEKS R14 R12 K7 ["Position"]
  SETTABLE R14 R4 R13
  MOVE R14 R9
  LOADK R15 K8 [".Rotation"]
  CONCAT R13 R14 R15
  GETTABLEKS R14 R12 K9 ["Rotation"]
  SETTABLE R14 R4 R13
  JUMP [+1]
  SETTABLE R12 R4 R9
  FORGLOOP R5 2 [-37]
  RETURN R4 1

PROTO_10:
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["UniqueId"]
  SETUPVAL R0 0
  RETURN R0 0

PROTO_11:
  LOADNIL R1
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE REF R1
  CAPTURE VAL R0
  CALL R2 1 1
  JUMPIF R2 [+1]
  LOADNIL R1
  DUPTABLE R3 K8 [{"name", "className", "path", "uniqueId", "properties", "children"}]
  GETTABLEKS R4 R0 K9 ["Name"]
  SETTABLEKS R4 R3 K2 ["name"]
  GETTABLEKS R4 R0 K10 ["ClassName"]
  SETTABLEKS R4 R3 K3 ["className"]
  NAMECALL R4 R0 K11 ["GetFullName"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["path"]
  SETTABLEKS R1 R3 K5 ["uniqueId"]
  GETUPVAL R4 0
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["properties"]
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["children"]
  GETUPVAL R4 2
  MOVE R5 R0
  CALL R4 1 1
  JUMPIFNOT R4 [+2]
  SETTABLEKS R4 R3 K12 ["attributes"]
  CLOSEUPVALS R1
  RETURN R3 1

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["JSONEncode"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_13:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIF R1 [+11]
  LOADK R4 K2 ["Error encoding JSON: %*"]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K4 [tostring]
  CALL R6 1 1
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  RETURN R3 1
  RETURN R2 1

PROTO_14:
  GETUPVAL R0 0
  NAMECALL R1 R0 K0 ["lower"]
  CALL R1 1 1
  LOADN R3 1
  LOADN R4 5
  NAMECALL R1 R1 K1 ["sub"]
  CALL R1 3 1
  JUMPIFNOTEQKS R1 K2 ["game."] [+6]
  LOADN R3 6
  NAMECALL R1 R0 K1 ["sub"]
  CALL R1 2 1
  MOVE R0 R1
  NEWTABLE R1 0 1
  GETIMPORT R2 K4 [game]
  SETLIST R1 R2 1 [1]
  LOADK R4 K5 ["."]
  NAMECALL R2 R0 K6 ["split"]
  CALL R2 2 3
  FORGPREP R2
  NEWTABLE R7 0 0
  MOVE R8 R1
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  NAMECALL R13 R12 K7 ["GetChildren"]
  CALL R13 1 3
  FORGPREP R13
  GETTABLEKS R18 R17 K8 ["Name"]
  NAMECALL R18 R18 K0 ["lower"]
  CALL R18 1 1
  NAMECALL R19 R6 K0 ["lower"]
  CALL R19 1 1
  JUMPIFNOTEQ R18 R19 [+8]
  FASTCALL2 TABLE_INSERT R7 R17 [+5]
  MOVE R19 R7
  MOVE R20 R17
  GETIMPORT R18 K11 [table.insert]
  CALL R18 2 0
  FORGLOOP R13 2 [-18]
  FORGLOOP R8 2 [-24]
  MOVE R1 R7
  LENGTH R8 R1
  JUMPIFEQKN R8 K12 [0] [+3]
  FORGLOOP R2 2 [-36]
  RETURN R1 1

PROTO_15:
  JUMPIFNOT R0 [+2]
  JUMPIFNOTEQKS R0 K0 [""] [+5]
  NEWTABLE R1 0 0
  LOADK R2 K1 ["Error: Path cannot be empty"]
  RETURN R1 2
  GETIMPORT R1 K3 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIFNOT R1 [+4]
  JUMPIFNOT R2 [+3]
  MOVE R3 R2
  LOADNIL R4
  RETURN R3 2
  NEWTABLE R3 0 0
  LOADK R5 K4 ["Error: Could not find instances at path '%*'"]
  MOVE R7 R0
  NAMECALL R5 R5 K5 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  RETURN R3 2

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["path"]
  CALL R1 1 2
  JUMPIFNOT R2 [+1]
  RETURN R2 1
  LENGTH R3 R1
  JUMPIFNOTEQKN R3 K1 [0] [+9]
  LOADK R4 K2 ["Error: Could not find any instances at path '%*'"]
  GETTABLEKS R6 R0 K0 ["path"]
  NAMECALL R4 R4 K3 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  RETURN R3 1
  LENGTH R3 R1
  JUMPIFNOTEQKN R3 K4 [1] [+24]
  GETUPVAL R3 1
  GETTABLEN R4 R1 1
  CALL R3 1 1
  GETIMPORT R5 K6 [pcall]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CALL R5 1 2
  JUMPIF R5 [+11]
  LOADK R7 K7 ["Error encoding JSON: %*"]
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R10 R6
  GETIMPORT R9 K9 [tostring]
  CALL R9 1 1
  NAMECALL R7 R7 K3 ["format"]
  CALL R7 2 1
  MOVE R4 R7
  RETURN R4 1
  MOVE R4 R6
  RETURN R4 1
  LENGTH R3 R1
  NEWTABLE R4 0 0
  LOADN R7 1
  GETUPVAL R10 3
  FASTCALL2 MATH_MIN R3 R10 [+4]
  MOVE R9 R3
  GETIMPORT R8 K12 [math.min]
  CALL R8 2 1
  MOVE R5 R8
  LOADN R6 1
  FORNPREP R5
  GETUPVAL R10 1
  GETTABLE R11 R1 R7
  CALL R10 1 1
  FASTCALL2 TABLE_INSERT R4 R10 [+4]
  MOVE R9 R4
  GETIMPORT R8 K15 [table.insert]
  CALL R8 2 0
  FORNLOOP R5
  LOADK R6 K16 ["Multiple instances found with path '%*'."]
  GETTABLEKS R8 R0 K0 ["path"]
  NAMECALL R6 R6 K3 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  DUPTABLE R6 K22 [{"matches", "count", "totalFound", "note", "warning"}]
  SETTABLEKS R4 R6 K17 ["matches"]
  LENGTH R7 R4
  SETTABLEKS R7 R6 K18 ["count"]
  SETTABLEKS R3 R6 K19 ["totalFound"]
  GETUPVAL R8 3
  JUMPIFNOTLE R3 R8 [+9]
  LOADK R8 K23 ["%* All %* matches are included below."]
  MOVE R10 R5
  MOVE R11 R3
  NAMECALL R8 R8 K3 ["format"]
  CALL R8 3 1
  MOVE R7 R8
  JUMP [+1]
  MOVE R7 R5
  SETTABLEKS R7 R6 K20 ["note"]
  GETUPVAL R8 3
  JUMPIFNOTLT R8 R3 [+9]
  LOADK R8 K24 ["Found %* total matches, but only showing first %* due to output limits. Consider using a more specific path to narrow down results."]
  MOVE R10 R3
  GETUPVAL R11 3
  NAMECALL R8 R8 K3 ["format"]
  CALL R8 3 1
  MOVE R7 R8
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K21 ["warning"]
  GETIMPORT R8 K6 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R6
  CALL R8 1 2
  JUMPIF R8 [+11]
  LOADK R10 K7 ["Error encoding JSON: %*"]
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R13 R9
  GETIMPORT R12 K9 [tostring]
  CALL R12 1 1
  NAMECALL R10 R10 K3 ["format"]
  CALL R10 2 1
  MOVE R7 R10
  RETURN R7 1
  MOVE R7 R9
  RETURN R7 1

PROTO_17:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  RETURN R2 1

PROTO_18:
  GETUPVAL R1 0
  LOADNIL R2
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 1
  CALL R2 0 1
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["addText"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["build"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_19:
  GETTABLEKS R1 R0 K0 ["networking"]
  LOADK R4 K1 ["InspectInstanceTool_inspect"]
  DUPCLOSURE R5 K2 [PROTO_17]
  CAPTURE UPVAL U0
  NAMECALL R2 R1 K3 ["OnHostInvokeAsync"]
  CALL R2 3 1
  NEWCLOSURE R3 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["define"]
  CALL R4 0 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["InspectInstance"]
  NAMECALL R4 R4 K6 ["setName"]
  CALL R4 2 1
  LOADK R7 K7 ["Inspect a specific Roblox instance to get all its properties, attributes, and children summary.
Returns detailed information about instances including all readable properties, custom attributes, 
and a comprehensive summary of immediate children and recursive child counts.
If multiple instances match the same path, all matches will be returned.
Use this tool after using GameTree to explore specific instances in detail.

SINGLE MATCH OUTPUT FORMAT:
{
  \"name\": \"MyPart\",
  \"className\": \"Part\",
  \"path\": \"Workspace.MyPart\",
  \"uniqueId\": \"1234567890ABCDEF\",
  \"properties\": {
    \"Anchored\": true,
    \"CanCollide\": true,
    \"CFrame.Position\": \"0, 10, 0\",
    \"CFrame.Rotation\": \"1, 0, 0, 0, 1, 0, 0, 0, 1\",
    // ... all other readable properties
  },
  \"attributes\": {
    \"CustomTag\": \"PlayerSpawn\",
    \"SpawnDelay\": 5,
    \"IsActive\": true
  },
  \"children\": {
    \"immediateChildren\": [
      {
        \"name\": \"ChildPart\",
        \"className\": \"Part\",
        \"path\": \"Workspace.MyPart.ChildPart\",
        \"childCount\": 0,
        \"uniqueId\": \"0987654321FEDCBA\"
      },
      {
        \"name\": \"ChildModel\",
        \"className\": \"Model\",
        \"path\": \"Workspace.MyPart.ChildModel\",
        \"childCount\": 5,
        \"uniqueId\": \"ABCD1234EFGH5678\"
      }
    ],
    \"childrenCount\": 2,
    \"totalDescendants\": 8
  }
}

CHILDREN SUMMARY FIELDS:
- immediateChildren: Array of direct children with name, className, path, childCount, and uniqueId (if available)
- childrenCount: Number of direct children
- totalDescendants: Total count of all descendants (children, children's children, etc.)

uniqueId is included for all instances and children when available. This is a unique identifier for each instance in the DataModel.

MULTIPLE MATCHES OUTPUT FORMAT:
{
  \"matches\": [
    { 
      \"name\": \"MyPart\", 
      \"className\": \"Part\", 
      \"path\": \"Workspace.MyPart\",
      \"uniqueId\": \"RBX1234567890ABCDEF\",
      \"properties\": {...}, 
      \"attributes\": {...},
      \"children\": {...}
    },
    { 
      \"name\": \"MyPart\", 
      \"className\": \"MeshPart\", 
      \"path\": \"Workspace.MyPart\",
      \"uniqueId\": \"RBX9876543210FEDCBA\",
      \"properties\": {...}, 
      \"attributes\": {...},
      \"children\": {...}
    }
  ],
  \"count\": 2,
  \"totalFound\": 2,
  \"note\": \"Multiple instances found with path 'Workspace.MyPart'. All 2 matches are included below.\"
}

WHEN TOO MANY MATCHES (>"]
  GETUPVAL R8 4
  LOADK R9 K8 ["):
{
  \"matches\": [ /* first "]
  GETUPVAL R10 4
  LOADK R11 K9 [" matches with full details */ ],
  \"count\": "]
  GETUPVAL R12 4
  LOADK R13 K10 [",
  \"totalFound\": 45,
  \"note\": \"Multiple instances found with path 'Workspace.Part'.\",
  \"warning\": \"Found 45 total matches, but only showing first "]
  GETUPVAL R14 4
  LOADK R15 K11 [" due to output limits. Consider using a more specific path to narrow down results.\"
}

PATH SPECIFICATION:
- Use dot notation: \"Workspace.Model.Part\"
- Can include or omit \"game.\" prefix
- Path must match instance hierarchy
- If multiple instances have the same name at the same level, all will be returned
- Maximum of "]
  GETUPVAL R16 4
  LOADK R17 K12 [" matches will be returned (with warning if more exist)

EXAMPLES:
- Inspect with children: InspectInstance(path: \"Workspace.Baseplate\")
- Multiple matches: InspectInstance(path: \"Workspace.Part\") → Returns up to "]
  GETUPVAL R18 4
  LOADK R19 K13 [" Parts with children summary
- Case-insensitive: InspectInstance(path: \"workspace.baseplate\")
- Inspect script: InspectInstance(path: \"ServerScriptService.MainScript\")
- Inspect GUI: InspectInstance(path: \"StarterGui.ScreenGui.Frame\")
- With game prefix: InspectInstance(path: \"game.Workspace.Model\")

CHILDREN SUMMARY USE CASES:
- Understand instance hierarchy structure
- Count total descendants for performance considerations
- See immediate children for navigation purposes
- Identify complex models with many nested children
- Plan traversal strategies for large hierarchies
"]
  CONCAT R6 R7 R19
  NAMECALL R4 R4 K14 ["setDescription"]
  CALL R4 2 1
  LOADK R6 K15 ["path"]
  DUPTABLE R7 K18 [{"type", "description"}]
  LOADK R8 K19 ["string"]
  SETTABLEKS R8 R7 K16 ["type"]
  LOADK R9 K20 ["Path to the instance(s) to inspect using dot notation (case-insensitive). Returns detailed properties, attributes, and children summary. If multiple instances match, up to %* will be returned with a warning if more exist. Example: 'Workspace.Model.Part' or 'workspace.model.part'"]
  GETUPVAL R11 4
  NAMECALL R9 R9 K21 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  SETTABLEKS R8 R7 K17 ["description"]
  NAMECALL R4 R4 K22 ["addArgument"]
  CALL R4 3 1
  MOVE R6 R3
  NAMECALL R4 R4 K23 ["setHandler"]
  CALL R4 2 1
  NAMECALL R4 R4 K24 ["build"]
  CALL R4 1 1
  DUPTABLE R5 K26 [{"definition"}]
  SETTABLEKS R4 R5 K25 ["definition"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["ReflectionService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["HttpService"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["AssistantUI"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["ModelContextProtocol"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R0 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Tools"]
  GETTABLEKS R6 R7 K16 ["ToolTypes"]
  CALL R5 1 1
  GETTABLEKS R7 R4 K17 ["Util"]
  GETTABLEKS R6 R7 K18 ["ToolBuilder"]
  GETTABLEKS R8 R4 K17 ["Util"]
  GETTABLEKS R7 R8 K19 ["ToolResult"]
  GETTABLEKS R8 R5 K20 ["ToolNames"]
  GETIMPORT R9 K10 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K21 ["Flags"]
  GETTABLEKS R10 R11 K22 ["FIntInspectInstanceMaxJsonLength"]
  CALL R9 1 1
  CALL R9 0 1
  GETIMPORT R10 K10 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K21 ["Flags"]
  GETTABLEKS R11 R12 K23 ["FIntInspectInstanceMaxMatches"]
  CALL R10 1 1
  CALL R10 0 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R14 R0 K14 ["Src"]
  GETTABLEKS R13 R14 K21 ["Flags"]
  GETTABLEKS R12 R13 K24 ["FIntInspectInstanceMaxStringLength"]
  CALL R11 1 1
  CALL R11 0 1
  DUPCLOSURE R12 K25 [PROTO_1]
  DUPCLOSURE R13 K26 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R9
  DUPCLOSURE R14 K27 [PROTO_5]
  CAPTURE VAL R13
  DUPTABLE R15 K32 [{"Parent", "ClassName", "Name", "DataModel"}]
  LOADB R16 1
  SETTABLEKS R16 R15 K28 ["Parent"]
  LOADB R16 1
  SETTABLEKS R16 R15 K29 ["ClassName"]
  LOADB R16 1
  SETTABLEKS R16 R15 K30 ["Name"]
  LOADB R16 1
  SETTABLEKS R16 R15 K31 ["DataModel"]
  DUPCLOSURE R16 K33 [PROTO_6]
  CAPTURE VAL R13
  DUPCLOSURE R17 K34 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R13
  DUPCLOSURE R18 K35 [PROTO_11]
  CAPTURE VAL R17
  CAPTURE VAL R12
  CAPTURE VAL R14
  DUPCLOSURE R19 K36 [PROTO_13]
  CAPTURE VAL R2
  DUPCLOSURE R20 K37 [PROTO_15]
  DUPCLOSURE R21 K38 [PROTO_16]
  CAPTURE VAL R20
  CAPTURE VAL R18
  CAPTURE VAL R2
  CAPTURE VAL R10
  DUPCLOSURE R22 K39 [PROTO_19]
  CAPTURE VAL R21
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R10
  RETURN R22 1
