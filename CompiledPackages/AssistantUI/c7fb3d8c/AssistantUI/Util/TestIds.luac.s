PROTO_0:
        0 LOADK                            R2 K0 ["Assistant-IntegrationItem-ToolPill-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["Assistant-ProviderCheckbox-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Display-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 ["Assistant-APIKey-EditButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Input-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R2 K0 ["Assistant-APIKey-SaveButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R2 K0 ["Assistant-APIKey-CancelButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 FASTCALL1                        TYPEOF R5 ; [+3]
        5 MOVE                             R7 R5
        6 GETIMPORT                        R6 K1 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+5]
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R5
       13 CALL                             R6 1 0
       14 JUMP                             ; [+49]
       15 LOADNIL                          R6
       16 FASTCALL1                        TYPEOF R5 ; [+3]
       17 MOVE                             R8 R5
       18 GETIMPORT                        R7 K1 [typeof]
       20 CALL                             R7 1 1
       21 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+3]
       23 MOVE                             R6 R5
       24 JUMP                             ; [+24]
       25 FASTCALL1                        TYPEOF R5 ; [+3]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R7 K1 [typeof]
       29 CALL                             R7 1 1
       30 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+5]
       32 MOVE                             R7 R5
       33 CALL                             R7 0 1
       34 MOVE                             R6 R7
       35 JUMP                             ; [+13]
       36 GETIMPORT                        R7 K6 [error]
       38 LOADK                            R9 K7 ["Unexpected value type: %*"]
       39 FASTCALL1                        TYPEOF R5 ; [+3]
       40 MOVE                             R12 R5
       41 GETIMPORT                        R11 K1 [typeof]
       43 CALL                             R11 1 1
       44 NAMECALL                         R9 R9 K8 ["format"]
       46 CALL                             R9 2 1
       47 MOVE                             R8 R9
       48 CALL                             R7 1 0
       49 GETUPVAL                         R8 1
       50 GETTABLE                         R7 R8 R6
       51 JUMPIFNOT                        R7 ; [+9]
       52 GETIMPORT                        R7 K6 [error]
       54 LOADK                            R9 K9 ["Duplicate test id found: %*"]
       55 MOVE                             R11 R6
       56 NAMECALL                         R9 R9 K8 ["format"]
       58 CALL                             R9 2 1
       59 MOVE                             R8 R9
       60 CALL                             R7 1 0
       61 GETUPVAL                         R7 1
       62 LOADB                            R8 1
       63 SETTABLE                         R8 R7 R6
       64 FORGLOOP                         R1 2 ; [-61]
       66 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K29 [{"Header", "ThreadsMenu", "ThreadEntry", "ThreadOptionsMenu", "RenameThreadDialog", "InputArea", "MessageActions", "GenerationIndicator", "ModelQualityWarning", "ServerManagement", "McpServer", "SlashCommandMenu", "ToolMenuView", "ModelPicker", "Carousel", "CarouselItem", "Alert", "ImageContent", "AssetVariation", "MaterialGen", "MeshGen", "RunCode", "Thinking", "ToolConfirmation", "Summarized", "IntegrationMenu", "IntegrationItem", "ProviderCheckbox", "APIKey"}]
        2 DUPTABLE                         R1 K33 [{"ToggleThreadsMenu", "SettingsButton", "SettingsContent"}]
        3 LOADK                            R2 K34 ["Assistant-Header-ToggleThreadsMenu"]
        4 SETTABLEKS                       R2 R1 K30 ["ToggleThreadsMenu"]
        6 LOADK                            R2 K35 ["Assistant-Header-SettingsButton"]
        7 SETTABLEKS                       R2 R1 K31 ["SettingsButton"]
        9 LOADK                            R2 K36 ["Assistant-Header-SettingsContent"]
       10 SETTABLEKS                       R2 R1 K32 ["SettingsContent"]
       12 SETTABLEKS                       R1 R0 K0 ["Header"]
       14 DUPTABLE                         R1 K40 [{"Container", "ExistingThreadButton", "AddThreadButton"}]
       15 LOADK                            R2 K41 ["Assistant-ThreadsMenu-Container"]
       16 SETTABLEKS                       R2 R1 K37 ["Container"]
       18 LOADK                            R2 K42 ["Assistant-ThreadsMenu-ExistingThreadButton"]
       19 SETTABLEKS                       R2 R1 K38 ["ExistingThreadButton"]
       21 LOADK                            R2 K43 ["Assistant-ThreadsMenu-AddThreadButton"]
       22 SETTABLEKS                       R2 R1 K39 ["AddThreadButton"]
       24 SETTABLEKS                       R1 R0 K1 ["ThreadsMenu"]
       26 DUPTABLE                         R1 K45 [{"OptionsButton"}]
       27 LOADK                            R2 K46 ["Assistant-ThreadEntry-OptionsButton"]
       28 SETTABLEKS                       R2 R1 K44 ["OptionsButton"]
       30 SETTABLEKS                       R1 R0 K2 ["ThreadEntry"]
       32 DUPTABLE                         R1 K47 [{"Container"}]
       33 LOADK                            R2 K48 ["Assistant-ThreadOptionsMenu-Container"]
       34 SETTABLEKS                       R2 R1 K37 ["Container"]
       36 SETTABLEKS                       R1 R0 K3 ["ThreadOptionsMenu"]
       38 DUPTABLE                         R1 K50 [{"Container", "Input"}]
       39 LOADK                            R2 K51 ["Assistant-RenameThreadDialog-Container"]
       40 SETTABLEKS                       R2 R1 K37 ["Container"]
       42 LOADK                            R2 K52 ["Assistant-RenameThreadDialog-Input"]
       43 SETTABLEKS                       R2 R1 K49 ["Input"]
       45 SETTABLEKS                       R1 R0 K4 ["RenameThreadDialog"]
       47 DUPTABLE                         R1 K57 [{"Container", "StopButton", "AttachImageButton", "AttachedImagesPreview", "Footer"}]
       48 LOADK                            R2 K58 ["Assistant-InputArea-Container"]
       49 SETTABLEKS                       R2 R1 K37 ["Container"]
       51 LOADK                            R2 K59 ["Assistant-InputArea-StopButton"]
       52 SETTABLEKS                       R2 R1 K53 ["StopButton"]
       54 LOADK                            R2 K60 ["Assistant-InputArea-AttachImageButton"]
       55 SETTABLEKS                       R2 R1 K54 ["AttachImageButton"]
       57 LOADK                            R2 K61 ["Assistant-InputArea-AttachedImagesPreview"]
       58 SETTABLEKS                       R2 R1 K55 ["AttachedImagesPreview"]
       60 DUPTABLE                         R2 K63 [{"Container", "Icon"}]
       61 LOADK                            R3 K64 ["Assistant-InputArea-Footer-Container"]
       62 SETTABLEKS                       R3 R2 K37 ["Container"]
       64 LOADK                            R3 K65 ["Assistant-InputArea-Footer-Icon"]
       65 SETTABLEKS                       R3 R2 K62 ["Icon"]
       67 SETTABLEKS                       R2 R1 K56 ["Footer"]
       69 SETTABLEKS                       R1 R0 K5 ["InputArea"]
       71 DUPTABLE                         R1 K69 [{"ThumbsUp", "ThumbsDown", "Retry"}]
       72 LOADK                            R2 K70 ["Assistant-MessageActions-ThumbsUp"]
       73 SETTABLEKS                       R2 R1 K66 ["ThumbsUp"]
       75 LOADK                            R2 K71 ["Assistant-MessageActions-ThumbsDown"]
       76 SETTABLEKS                       R2 R1 K67 ["ThumbsDown"]
       78 LOADK                            R2 K72 ["Assistant-MessageActions-Retry"]
       79 SETTABLEKS                       R2 R1 K68 ["Retry"]
       81 SETTABLEKS                       R1 R0 K6 ["MessageActions"]
       83 LOADK                            R1 K73 ["Assistant-GenerationIndicator"]
       84 SETTABLEKS                       R1 R0 K7 ["GenerationIndicator"]
       86 LOADK                            R1 K74 ["Assistant-ModelQualityWarning"]
       87 SETTABLEKS                       R1 R0 K8 ["ModelQualityWarning"]
       89 DUPTABLE                         R1 K76 [{"Button"}]
       90 LOADK                            R2 K77 ["Assistant-ServerManagement-Button"]
       91 SETTABLEKS                       R2 R1 K75 ["Button"]
       93 SETTABLEKS                       R1 R0 K9 ["ServerManagement"]
       95 DUPTABLE                         R1 K80 [{"Checkbox", "CheckboxInput"}]
       96 LOADK                            R2 K81 ["Assistant-McpServer-Checkbox"]
       97 SETTABLEKS                       R2 R1 K78 ["Checkbox"]
       99 LOADK                            R2 K82 ["Assistant-McpServer-Checkbox--container"]
      100 SETTABLEKS                       R2 R1 K79 ["CheckboxInput"]
      102 SETTABLEKS                       R1 R0 K10 ["McpServer"]
      104 DUPTABLE                         R1 K84 [{"Container", "Item"}]
      105 LOADK                            R2 K85 ["Assistant-SlashCommandMenu-Container"]
      106 SETTABLEKS                       R2 R1 K37 ["Container"]
      108 DUPTABLE                         R2 K87 [{"Container", "Command"}]
      109 LOADK                            R3 K88 ["Assistant-SlashCommandMenu-Item-Container"]
      110 SETTABLEKS                       R3 R2 K37 ["Container"]
      112 LOADK                            R3 K89 ["Assistant-SlashCommandMenu-Item-Command"]
      113 SETTABLEKS                       R3 R2 K86 ["Command"]
      115 SETTABLEKS                       R2 R1 K83 ["Item"]
      117 SETTABLEKS                       R1 R0 K11 ["SlashCommandMenu"]
      119 DUPTABLE                         R1 K91 [{"Container", "Option"}]
      120 LOADK                            R2 K92 ["Assistant-ToolMenuView-Container"]
      121 SETTABLEKS                       R2 R1 K37 ["Container"]
      123 DUPTABLE                         R2 K93 [{"Container", "Checkbox"}]
      124 LOADK                            R3 K94 ["Assistant-ToolMenuView-Option-Container"]
      125 SETTABLEKS                       R3 R2 K37 ["Container"]
      127 LOADK                            R3 K95 ["Assistant-ToolMenuView-Option-Checkbox"]
      128 SETTABLEKS                       R3 R2 K78 ["Checkbox"]
      130 SETTABLEKS                       R2 R1 K90 ["Option"]
      132 SETTABLEKS                       R1 R0 K12 ["ToolMenuView"]
      134 DUPTABLE                         R1 K97 [{"Container", "Dropdown"}]
      135 LOADK                            R2 K98 ["Assistant-ModelPicker-Container"]
      136 SETTABLEKS                       R2 R1 K37 ["Container"]
      138 LOADK                            R2 K99 ["Assistant-ModelPicker-Dropdown"]
      139 SETTABLEKS                       R2 R1 K96 ["Dropdown"]
      141 SETTABLEKS                       R1 R0 K13 ["ModelPicker"]
      143 DUPTABLE                         R1 K47 [{"Container"}]
      144 LOADK                            R2 K100 ["Assistant-Carousel-Container"]
      145 SETTABLEKS                       R2 R1 K37 ["Container"]
      147 SETTABLEKS                       R1 R0 K14 ["Carousel"]
      149 DUPTABLE                         R1 K102 [{"Selected"}]
      150 LOADK                            R2 K103 ["Assistant-CarouselItem-Selected"]
      151 SETTABLEKS                       R2 R1 K101 ["Selected"]
      153 SETTABLEKS                       R1 R0 K15 ["CarouselItem"]
      155 DUPTABLE                         R1 K107 [{"Continue", "EditApiKeys", "Close"}]
      156 LOADK                            R2 K108 ["Assistant-Alert-Continue"]
      157 SETTABLEKS                       R2 R1 K104 ["Continue"]
      159 LOADK                            R2 K109 ["Assistant-Alert-EditApiKeys"]
      160 SETTABLEKS                       R2 R1 K105 ["EditApiKeys"]
      162 LOADK                            R2 K110 ["Assistant-Alert-Close"]
      163 SETTABLEKS                       R2 R1 K106 ["Close"]
      165 SETTABLEKS                       R1 R0 K16 ["Alert"]
      167 DUPTABLE                         R1 K113 [{"Image", "Expand"}]
      168 LOADK                            R2 K114 ["Assistant-ImageContent-Image"]
      169 SETTABLEKS                       R2 R1 K111 ["Image"]
      171 LOADK                            R2 K115 ["Assistant-ImageContent-Expand"]
      172 SETTABLEKS                       R2 R1 K112 ["Expand"]
      174 SETTABLEKS                       R1 R0 K17 ["ImageContent"]
      176 DUPTABLE                         R1 K116 [{"Expand"}]
      177 LOADK                            R2 K117 ["Assistant-AssetVariation-Expand"]
      178 SETTABLEKS                       R2 R1 K112 ["Expand"]
      180 SETTABLEKS                       R1 R0 K18 ["AssetVariation"]
      182 DUPTABLE                         R1 K120 [{"Expand", "StudsPerTileValueBar", "OrganicPatternToggle"}]
      183 LOADK                            R2 K121 ["Assistant-MaterialGen-Expand"]
      184 SETTABLEKS                       R2 R1 K112 ["Expand"]
      186 LOADK                            R2 K122 ["Assistant-MaterialGen-StudsPerTileValueBar"]
      187 SETTABLEKS                       R2 R1 K118 ["StudsPerTileValueBar"]
      189 LOADK                            R2 K123 ["Assistant-MaterialGen-OrganicPatternToggle"]
      190 SETTABLEKS                       R2 R1 K119 ["OrganicPatternToggle"]
      192 SETTABLEKS                       R1 R0 K19 ["MaterialGen"]
      194 DUPTABLE                         R1 K132 [{"Expand", "PreviewImage", "LastPreview", "NextPreview", "UseSelection", "Cancel", "Regenerate", "Publish", "Insert"}]
      195 LOADK                            R2 K133 ["Assistant-MeshGen-Expand"]
      196 SETTABLEKS                       R2 R1 K112 ["Expand"]
      198 LOADK                            R2 K134 ["Assistant-MeshGen-PreviewImage"]
      199 SETTABLEKS                       R2 R1 K124 ["PreviewImage"]
      201 LOADK                            R2 K135 ["Assistant-MeshGen-LastPreview"]
      202 SETTABLEKS                       R2 R1 K125 ["LastPreview"]
      204 LOADK                            R2 K136 ["Assistant-MeshGen-NextPreview"]
      205 SETTABLEKS                       R2 R1 K126 ["NextPreview"]
      207 LOADK                            R2 K137 ["Assistant-MeshGen-UseSelection"]
      208 SETTABLEKS                       R2 R1 K127 ["UseSelection"]
      210 LOADK                            R2 K138 ["Assistant-MeshGen-Cancel"]
      211 SETTABLEKS                       R2 R1 K128 ["Cancel"]
      213 LOADK                            R2 K139 ["Assistant-MeshGen-Regenerate"]
      214 SETTABLEKS                       R2 R1 K129 ["Regenerate"]
      216 LOADK                            R2 K140 ["Assistant-MeshGen-Publish"]
      217 SETTABLEKS                       R2 R1 K130 ["Publish"]
      219 LOADK                            R2 K141 ["Assistant-MeshGen-Insert"]
      220 SETTABLEKS                       R2 R1 K131 ["Insert"]
      222 SETTABLEKS                       R1 R0 K20 ["MeshGen"]
      224 DUPTABLE                         R1 K145 [{"Expand", "Copy", "Run", "Stop"}]
      225 LOADK                            R2 K146 ["Assistant-RunCode-Expand"]
      226 SETTABLEKS                       R2 R1 K112 ["Expand"]
      228 LOADK                            R2 K147 ["Assistant-RunCode-Copy"]
      229 SETTABLEKS                       R2 R1 K142 ["Copy"]
      231 LOADK                            R2 K148 ["Assistant-RunCode-Run"]
      232 SETTABLEKS                       R2 R1 K143 ["Run"]
      234 LOADK                            R2 K149 ["Assistant-RunCode-Stop"]
      235 SETTABLEKS                       R2 R1 K144 ["Stop"]
      237 SETTABLEKS                       R1 R0 K21 ["RunCode"]
      239 DUPTABLE                         R1 K116 [{"Expand"}]
      240 LOADK                            R2 K150 ["Assistant-Thinking-Expand"]
      241 SETTABLEKS                       R2 R1 K112 ["Expand"]
      243 SETTABLEKS                       R1 R0 K22 ["Thinking"]
      245 DUPTABLE                         R1 K155 [{"Warning", "Accept", "Reject", "AlwaysAccept"}]
      246 LOADK                            R2 K156 ["Assistant-ToolConfirmation-Warning"]
      247 SETTABLEKS                       R2 R1 K151 ["Warning"]
      249 LOADK                            R2 K157 ["Assistant-ToolConfirmation-Accept"]
      250 SETTABLEKS                       R2 R1 K152 ["Accept"]
      252 LOADK                            R2 K158 ["Assistant-ToolConfirmation-Reject"]
      253 SETTABLEKS                       R2 R1 K153 ["Reject"]
      255 LOADK                            R2 K159 ["Assistant-ToolConfirmation-AlwaysAccept"]
      256 SETTABLEKS                       R2 R1 K154 ["AlwaysAccept"]
      258 SETTABLEKS                       R1 R0 K23 ["ToolConfirmation"]
      260 DUPTABLE                         R1 K160 [{"Icon"}]
      261 LOADK                            R2 K161 ["Assistant-Summarized-Icon"]
      262 SETTABLEKS                       R2 R1 K62 ["Icon"]
      264 SETTABLEKS                       R1 R0 K24 ["Summarized"]
      266 DUPTABLE                         R1 K165 [{"AddIntegrationDialog", "TabContent", "EmptyState"}]
      267 LOADK                            R2 K166 ["Assistant-IntegrationMenu-AddIntegrationDialog"]
      268 SETTABLEKS                       R2 R1 K162 ["AddIntegrationDialog"]
      270 LOADK                            R2 K167 ["Assistant-IntegrationMenu-TabContent"]
      271 SETTABLEKS                       R2 R1 K163 ["TabContent"]
      273 LOADK                            R2 K168 ["Assistant-IntegrationMenu-EmptyState"]
      274 SETTABLEKS                       R2 R1 K164 ["EmptyState"]
      276 SETTABLEKS                       R1 R0 K25 ["IntegrationMenu"]
      278 DUPTABLE                         R1 K173 [{"Dialog", "Header", "ToolsContainer", "ToolPill", "Actions"}]
      279 LOADK                            R2 K174 ["Assistant-IntegrationItem-Dialog"]
      280 SETTABLEKS                       R2 R1 K169 ["Dialog"]
      282 LOADK                            R2 K175 ["Assistant-IntegrationItem-Header"]
      283 SETTABLEKS                       R2 R1 K0 ["Header"]
      285 LOADK                            R2 K176 ["Assistant-IntegrationItem-ToolsContainer"]
      286 SETTABLEKS                       R2 R1 K170 ["ToolsContainer"]
      288 DUPCLOSURE                       R2 K177 [PROTO_0]
      289 SETTABLEKS                       R2 R1 K171 ["ToolPill"]
      291 DUPTABLE                         R2 K181 [{"Toggle", "OverflowButton", "OverflowContent"}]
      292 LOADK                            R3 K182 ["Assistant-IntegrationItem-Actions-Toggle"]
      293 SETTABLEKS                       R3 R2 K178 ["Toggle"]
      295 LOADK                            R3 K183 ["Assistant-IntegrationItem-Actions-OverflowButton"]
      296 SETTABLEKS                       R3 R2 K179 ["OverflowButton"]
      298 LOADK                            R3 K184 ["Assistant-IntegrationItem-Actions-OverflowContent"]
      299 SETTABLEKS                       R3 R2 K180 ["OverflowContent"]
      301 SETTABLEKS                       R2 R1 K172 ["Actions"]
      303 SETTABLEKS                       R1 R0 K26 ["IntegrationItem"]
      305 DUPCLOSURE                       R1 K185 [PROTO_1]
      306 SETTABLEKS                       R1 R0 K27 ["ProviderCheckbox"]
      308 DUPTABLE                         R1 K190 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      309 DUPCLOSURE                       R2 K191 [PROTO_2]
      310 SETTABLEKS                       R2 R1 K186 ["Display"]
      312 DUPCLOSURE                       R2 K192 [PROTO_3]
      313 SETTABLEKS                       R2 R1 K187 ["EditButton"]
      315 DUPCLOSURE                       R2 K193 [PROTO_4]
      316 SETTABLEKS                       R2 R1 K49 ["Input"]
      318 DUPCLOSURE                       R2 K194 [PROTO_5]
      319 SETTABLEKS                       R2 R1 K188 ["SaveButton"]
      321 DUPCLOSURE                       R2 K195 [PROTO_6]
      322 SETTABLEKS                       R2 R1 K189 ["CancelButton"]
      324 SETTABLEKS                       R1 R0 K28 ["APIKey"]
      326 GETIMPORT                        R1 K197 [pcall]
      328 DUPCLOSURE                       R2 K198 [PROTO_7]
      329 CALL                             R1 1 2
      330 JUMPIFNOT                        R1 ; [+8]
      331 NEWTABLE                         R3 0 0
      333 DUPCLOSURE                       R4 K199 [PROTO_8]
      334 CAPTURE                          VAL R4
      335 CAPTURE                          VAL R3
      336 MOVE                             R5 R4
      337 MOVE                             R6 R0
      338 CALL                             R5 1 0
      339 RETURN                           R0 1
