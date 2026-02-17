PROTO_0:
  LOADK R2 K0 ["Assistant-IntegrationItem-ToolPill-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_1:
  LOADK R2 K0 ["Assistant-ProviderCheckbox-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_2:
  LOADK R2 K0 ["Assistant-APIKey-Display-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_3:
  LOADK R2 K0 ["Assistant-APIKey-EditButton-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_4:
  LOADK R2 K0 ["Assistant-APIKey-Input-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_5:
  LOADK R2 K0 ["Assistant-APIKey-SaveButton-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_6:
  LOADK R2 K0 ["Assistant-APIKey-CancelButton-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_7:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ProcessService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_8:
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  FASTCALL1 TYPEOF R5 [+3]
  MOVE R7 R5
  GETIMPORT R6 K1 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K2 ["table"] [+5]
  GETUPVAL R6 0
  MOVE R7 R5
  CALL R6 1 0
  JUMP [+49]
  LOADNIL R6
  FASTCALL1 TYPEOF R5 [+3]
  MOVE R8 R5
  GETIMPORT R7 K1 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K3 ["string"] [+3]
  MOVE R6 R5
  JUMP [+24]
  FASTCALL1 TYPEOF R5 [+3]
  MOVE R8 R5
  GETIMPORT R7 K1 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K4 ["function"] [+5]
  MOVE R7 R5
  CALL R7 0 1
  MOVE R6 R7
  JUMP [+13]
  GETIMPORT R7 K6 [error]
  LOADK R9 K7 ["Unexpected value type: %*"]
  FASTCALL1 TYPEOF R5 [+3]
  MOVE R12 R5
  GETIMPORT R11 K1 [typeof]
  CALL R11 1 1
  NAMECALL R9 R9 K8 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  CALL R7 1 0
  GETUPVAL R8 1
  GETTABLE R7 R8 R6
  JUMPIFNOT R7 [+9]
  GETIMPORT R7 K6 [error]
  LOADK R9 K9 ["Duplicate test id found: %*"]
  MOVE R11 R6
  NAMECALL R9 R9 K8 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  CALL R7 1 0
  GETUPVAL R7 1
  LOADB R8 1
  SETTABLE R8 R7 R6
  FORGLOOP R1 2 [-61]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K28 [{"Header", "ThreadsMenu", "ThreadEntry", "ThreadOptionsMenu", "RenameThreadDialog", "InputArea", "MessageActions", "GenerationIndicator", "ModelQualityWarning", "ServerManagement", "McpServer", "SlashCommandMenu", "ToolMenuView", "ModelPicker", "Carousel", "CarouselItem", "Alert", "ImageContent", "AssetVariation", "MaterialGen", "MeshGen", "RunCode", "Thinking", "ToolConfirmation", "IntegrationMenu", "IntegrationItem", "ProviderCheckbox", "APIKey"}]
  DUPTABLE R1 K32 [{"ToggleThreadsMenu", "SettingsButton", "SettingsContent"}]
  LOADK R2 K33 ["Assistant-Header-ToggleThreadsMenu"]
  SETTABLEKS R2 R1 K29 ["ToggleThreadsMenu"]
  LOADK R2 K34 ["Assistant-Header-SettingsButton"]
  SETTABLEKS R2 R1 K30 ["SettingsButton"]
  LOADK R2 K35 ["Assistant-Header-SettingsContent"]
  SETTABLEKS R2 R1 K31 ["SettingsContent"]
  SETTABLEKS R1 R0 K0 ["Header"]
  DUPTABLE R1 K39 [{"Container", "ExistingThreadButton", "AddThreadButton"}]
  LOADK R2 K40 ["Assistant-ThreadsMenu-Container"]
  SETTABLEKS R2 R1 K36 ["Container"]
  LOADK R2 K41 ["Assistant-ThreadsMenu-ExistingThreadButton"]
  SETTABLEKS R2 R1 K37 ["ExistingThreadButton"]
  LOADK R2 K42 ["Assistant-ThreadsMenu-AddThreadButton"]
  SETTABLEKS R2 R1 K38 ["AddThreadButton"]
  SETTABLEKS R1 R0 K1 ["ThreadsMenu"]
  DUPTABLE R1 K44 [{"OptionsButton"}]
  LOADK R2 K45 ["Assistant-ThreadEntry-OptionsButton"]
  SETTABLEKS R2 R1 K43 ["OptionsButton"]
  SETTABLEKS R1 R0 K2 ["ThreadEntry"]
  DUPTABLE R1 K46 [{"Container"}]
  LOADK R2 K47 ["Assistant-ThreadOptionsMenu-Container"]
  SETTABLEKS R2 R1 K36 ["Container"]
  SETTABLEKS R1 R0 K3 ["ThreadOptionsMenu"]
  DUPTABLE R1 K49 [{"Container", "Input"}]
  LOADK R2 K50 ["Assistant-RenameThreadDialog-Container"]
  SETTABLEKS R2 R1 K36 ["Container"]
  LOADK R2 K51 ["Assistant-RenameThreadDialog-Input"]
  SETTABLEKS R2 R1 K48 ["Input"]
  SETTABLEKS R1 R0 K4 ["RenameThreadDialog"]
  DUPTABLE R1 K56 [{"Container", "StopButton", "AttachImageButton", "AttachedImagesPreview", "Footer"}]
  LOADK R2 K57 ["Assistant-InputArea-Container"]
  SETTABLEKS R2 R1 K36 ["Container"]
  LOADK R2 K58 ["Assistant-InputArea-StopButton"]
  SETTABLEKS R2 R1 K52 ["StopButton"]
  LOADK R2 K59 ["Assistant-InputArea-AttachImageButton"]
  SETTABLEKS R2 R1 K53 ["AttachImageButton"]
  LOADK R2 K60 ["Assistant-InputArea-AttachedImagesPreview"]
  SETTABLEKS R2 R1 K54 ["AttachedImagesPreview"]
  DUPTABLE R2 K62 [{"Container", "Icon"}]
  LOADK R3 K63 ["Assistant-InputArea-Footer-Container"]
  SETTABLEKS R3 R2 K36 ["Container"]
  LOADK R3 K64 ["Assistant-InputArea-Footer-Icon"]
  SETTABLEKS R3 R2 K61 ["Icon"]
  SETTABLEKS R2 R1 K55 ["Footer"]
  SETTABLEKS R1 R0 K5 ["InputArea"]
  DUPTABLE R1 K68 [{"ThumbsUp", "ThumbsDown", "Retry"}]
  LOADK R2 K69 ["Assistant-MessageActions-ThumbsUp"]
  SETTABLEKS R2 R1 K65 ["ThumbsUp"]
  LOADK R2 K70 ["Assistant-MessageActions-ThumbsDown"]
  SETTABLEKS R2 R1 K66 ["ThumbsDown"]
  LOADK R2 K71 ["Assistant-MessageActions-Retry"]
  SETTABLEKS R2 R1 K67 ["Retry"]
  SETTABLEKS R1 R0 K6 ["MessageActions"]
  LOADK R1 K72 ["Assistant-GenerationIndicator"]
  SETTABLEKS R1 R0 K7 ["GenerationIndicator"]
  LOADK R1 K73 ["Assistant-ModelQualityWarning"]
  SETTABLEKS R1 R0 K8 ["ModelQualityWarning"]
  DUPTABLE R1 K75 [{"Button"}]
  LOADK R2 K76 ["Assistant-ServerManagement-Button"]
  SETTABLEKS R2 R1 K74 ["Button"]
  SETTABLEKS R1 R0 K9 ["ServerManagement"]
  DUPTABLE R1 K79 [{"Checkbox", "CheckboxInput"}]
  LOADK R2 K80 ["Assistant-McpServer-Checkbox"]
  SETTABLEKS R2 R1 K77 ["Checkbox"]
  LOADK R2 K81 ["Assistant-McpServer-Checkbox--container"]
  SETTABLEKS R2 R1 K78 ["CheckboxInput"]
  SETTABLEKS R1 R0 K10 ["McpServer"]
  DUPTABLE R1 K83 [{"Container", "Item"}]
  LOADK R2 K84 ["Assistant-SlashCommandMenu-Container"]
  SETTABLEKS R2 R1 K36 ["Container"]
  DUPTABLE R2 K86 [{"Container", "Command"}]
  LOADK R3 K87 ["Assistant-SlashCommandMenu-Item-Container"]
  SETTABLEKS R3 R2 K36 ["Container"]
  LOADK R3 K88 ["Assistant-SlashCommandMenu-Item-Command"]
  SETTABLEKS R3 R2 K85 ["Command"]
  SETTABLEKS R2 R1 K82 ["Item"]
  SETTABLEKS R1 R0 K11 ["SlashCommandMenu"]
  DUPTABLE R1 K90 [{"Container", "Option"}]
  LOADK R2 K91 ["Assistant-ToolMenuView-Container"]
  SETTABLEKS R2 R1 K36 ["Container"]
  DUPTABLE R2 K92 [{"Container", "Checkbox"}]
  LOADK R3 K93 ["Assistant-ToolMenuView-Option-Container"]
  SETTABLEKS R3 R2 K36 ["Container"]
  LOADK R3 K94 ["Assistant-ToolMenuView-Option-Checkbox"]
  SETTABLEKS R3 R2 K77 ["Checkbox"]
  SETTABLEKS R2 R1 K89 ["Option"]
  SETTABLEKS R1 R0 K12 ["ToolMenuView"]
  DUPTABLE R1 K96 [{"Container", "Dropdown"}]
  LOADK R2 K97 ["Assistant-ModelPicker-Container"]
  SETTABLEKS R2 R1 K36 ["Container"]
  LOADK R2 K98 ["Assistant-ModelPicker-Dropdown"]
  SETTABLEKS R2 R1 K95 ["Dropdown"]
  SETTABLEKS R1 R0 K13 ["ModelPicker"]
  DUPTABLE R1 K46 [{"Container"}]
  LOADK R2 K99 ["Assistant-Carousel-Container"]
  SETTABLEKS R2 R1 K36 ["Container"]
  SETTABLEKS R1 R0 K14 ["Carousel"]
  DUPTABLE R1 K101 [{"Selected"}]
  LOADK R2 K102 ["Assistant-CarouselItem-Selected"]
  SETTABLEKS R2 R1 K100 ["Selected"]
  SETTABLEKS R1 R0 K15 ["CarouselItem"]
  DUPTABLE R1 K106 [{"Continue", "EditApiKeys", "Close"}]
  LOADK R2 K107 ["Assistant-Alert-Continue"]
  SETTABLEKS R2 R1 K103 ["Continue"]
  LOADK R2 K108 ["Assistant-Alert-EditApiKeys"]
  SETTABLEKS R2 R1 K104 ["EditApiKeys"]
  LOADK R2 K109 ["Assistant-Alert-Close"]
  SETTABLEKS R2 R1 K105 ["Close"]
  SETTABLEKS R1 R0 K16 ["Alert"]
  DUPTABLE R1 K112 [{"Image", "Expand"}]
  LOADK R2 K113 ["Assistant-ImageContent-Image"]
  SETTABLEKS R2 R1 K110 ["Image"]
  LOADK R2 K114 ["Assistant-ImageContent-Expand"]
  SETTABLEKS R2 R1 K111 ["Expand"]
  SETTABLEKS R1 R0 K17 ["ImageContent"]
  DUPTABLE R1 K115 [{"Expand"}]
  LOADK R2 K116 ["Assistant-AssetVariation-Expand"]
  SETTABLEKS R2 R1 K111 ["Expand"]
  SETTABLEKS R1 R0 K18 ["AssetVariation"]
  DUPTABLE R1 K119 [{"Expand", "StudsPerTileValueBar", "OrganicPatternToggle"}]
  LOADK R2 K120 ["Assistant-MaterialGen-Expand"]
  SETTABLEKS R2 R1 K111 ["Expand"]
  LOADK R2 K121 ["Assistant-MaterialGen-StudsPerTileValueBar"]
  SETTABLEKS R2 R1 K117 ["StudsPerTileValueBar"]
  LOADK R2 K122 ["Assistant-MaterialGen-OrganicPatternToggle"]
  SETTABLEKS R2 R1 K118 ["OrganicPatternToggle"]
  SETTABLEKS R1 R0 K19 ["MaterialGen"]
  DUPTABLE R1 K131 [{"Expand", "PreviewImage", "LastPreview", "NextPreview", "UseSelection", "Cancel", "Regenerate", "Publish", "Insert"}]
  LOADK R2 K132 ["Assistant-MeshGen-Expand"]
  SETTABLEKS R2 R1 K111 ["Expand"]
  LOADK R2 K133 ["Assistant-MeshGen-PreviewImage"]
  SETTABLEKS R2 R1 K123 ["PreviewImage"]
  LOADK R2 K134 ["Assistant-MeshGen-LastPreview"]
  SETTABLEKS R2 R1 K124 ["LastPreview"]
  LOADK R2 K135 ["Assistant-MeshGen-NextPreview"]
  SETTABLEKS R2 R1 K125 ["NextPreview"]
  LOADK R2 K136 ["Assistant-MeshGen-UseSelection"]
  SETTABLEKS R2 R1 K126 ["UseSelection"]
  LOADK R2 K137 ["Assistant-MeshGen-Cancel"]
  SETTABLEKS R2 R1 K127 ["Cancel"]
  LOADK R2 K138 ["Assistant-MeshGen-Regenerate"]
  SETTABLEKS R2 R1 K128 ["Regenerate"]
  LOADK R2 K139 ["Assistant-MeshGen-Publish"]
  SETTABLEKS R2 R1 K129 ["Publish"]
  LOADK R2 K140 ["Assistant-MeshGen-Insert"]
  SETTABLEKS R2 R1 K130 ["Insert"]
  SETTABLEKS R1 R0 K20 ["MeshGen"]
  DUPTABLE R1 K144 [{"Expand", "Copy", "Run", "Stop"}]
  LOADK R2 K145 ["Assistant-RunCode-Expand"]
  SETTABLEKS R2 R1 K111 ["Expand"]
  LOADK R2 K146 ["Assistant-RunCode-Copy"]
  SETTABLEKS R2 R1 K141 ["Copy"]
  LOADK R2 K147 ["Assistant-RunCode-Run"]
  SETTABLEKS R2 R1 K142 ["Run"]
  LOADK R2 K148 ["Assistant-RunCode-Stop"]
  SETTABLEKS R2 R1 K143 ["Stop"]
  SETTABLEKS R1 R0 K21 ["RunCode"]
  DUPTABLE R1 K115 [{"Expand"}]
  LOADK R2 K149 ["Assistant-Thinking-Expand"]
  SETTABLEKS R2 R1 K111 ["Expand"]
  SETTABLEKS R1 R0 K22 ["Thinking"]
  DUPTABLE R1 K154 [{"Warning", "Accept", "Reject", "AlwaysAccept"}]
  LOADK R2 K155 ["Assistant-ToolConfirmation-Warning"]
  SETTABLEKS R2 R1 K150 ["Warning"]
  LOADK R2 K156 ["Assistant-ToolConfirmation-Accept"]
  SETTABLEKS R2 R1 K151 ["Accept"]
  LOADK R2 K157 ["Assistant-ToolConfirmation-Reject"]
  SETTABLEKS R2 R1 K152 ["Reject"]
  LOADK R2 K158 ["Assistant-ToolConfirmation-AlwaysAccept"]
  SETTABLEKS R2 R1 K153 ["AlwaysAccept"]
  SETTABLEKS R1 R0 K23 ["ToolConfirmation"]
  DUPTABLE R1 K162 [{"AddIntegrationDialog", "TabContent", "EmptyState"}]
  LOADK R2 K163 ["Assistant-IntegrationMenu-AddIntegrationDialog"]
  SETTABLEKS R2 R1 K159 ["AddIntegrationDialog"]
  LOADK R2 K164 ["Assistant-IntegrationMenu-TabContent"]
  SETTABLEKS R2 R1 K160 ["TabContent"]
  LOADK R2 K165 ["Assistant-IntegrationMenu-EmptyState"]
  SETTABLEKS R2 R1 K161 ["EmptyState"]
  SETTABLEKS R1 R0 K24 ["IntegrationMenu"]
  DUPTABLE R1 K170 [{"Dialog", "Header", "ToolsContainer", "ToolPill", "Actions"}]
  LOADK R2 K171 ["Assistant-IntegrationItem-Dialog"]
  SETTABLEKS R2 R1 K166 ["Dialog"]
  LOADK R2 K172 ["Assistant-IntegrationItem-Header"]
  SETTABLEKS R2 R1 K0 ["Header"]
  LOADK R2 K173 ["Assistant-IntegrationItem-ToolsContainer"]
  SETTABLEKS R2 R1 K167 ["ToolsContainer"]
  DUPCLOSURE R2 K174 [PROTO_0]
  SETTABLEKS R2 R1 K168 ["ToolPill"]
  DUPTABLE R2 K178 [{"Toggle", "OverflowButton", "OverflowContent"}]
  LOADK R3 K179 ["Assistant-IntegrationItem-Actions-Toggle"]
  SETTABLEKS R3 R2 K175 ["Toggle"]
  LOADK R3 K180 ["Assistant-IntegrationItem-Actions-OverflowButton"]
  SETTABLEKS R3 R2 K176 ["OverflowButton"]
  LOADK R3 K181 ["Assistant-IntegrationItem-Actions-OverflowContent"]
  SETTABLEKS R3 R2 K177 ["OverflowContent"]
  SETTABLEKS R2 R1 K169 ["Actions"]
  SETTABLEKS R1 R0 K25 ["IntegrationItem"]
  DUPCLOSURE R1 K182 [PROTO_1]
  SETTABLEKS R1 R0 K26 ["ProviderCheckbox"]
  DUPTABLE R1 K187 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
  DUPCLOSURE R2 K188 [PROTO_2]
  SETTABLEKS R2 R1 K183 ["Display"]
  DUPCLOSURE R2 K189 [PROTO_3]
  SETTABLEKS R2 R1 K184 ["EditButton"]
  DUPCLOSURE R2 K190 [PROTO_4]
  SETTABLEKS R2 R1 K48 ["Input"]
  DUPCLOSURE R2 K191 [PROTO_5]
  SETTABLEKS R2 R1 K185 ["SaveButton"]
  DUPCLOSURE R2 K192 [PROTO_6]
  SETTABLEKS R2 R1 K186 ["CancelButton"]
  SETTABLEKS R1 R0 K27 ["APIKey"]
  GETIMPORT R1 K194 [pcall]
  DUPCLOSURE R2 K195 [PROTO_7]
  CALL R1 1 2
  JUMPIFNOT R1 [+8]
  NEWTABLE R3 0 0
  DUPCLOSURE R4 K196 [PROTO_8]
  CAPTURE VAL R4
  CAPTURE VAL R3
  MOVE R5 R4
  MOVE R6 R0
  CALL R5 1 0
  RETURN R0 1
