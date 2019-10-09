#version 150

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec3 Exposure;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlagsShadows;
};

uniform vec4 CB0[31];
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 COLOR0;
in vec4 COLOR1;
out vec4 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out float VARYING7;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v1 = int(COLOR1.x) * 3;
    int v2 = v1 + 1;
    int v3 = v1 + 2;
    float v4 = dot(CB1[v1 * 1 + 0], POSITION);
    float v5 = dot(CB1[v2 * 1 + 0], POSITION);
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    vec3 v7 = vec3(v4, v5, v6);
    vec3 v8 = vec3(dot(CB1[v1 * 1 + 0].xyz, v0), dot(CB1[v2 * 1 + 0].xyz, v0), dot(CB1[v3 * 1 + 0].xyz, v0));
    vec3 v9 = -CB0[11].xyz;
    float v10 = dot(v8, v9);
    vec3 v11 = CB0[7].xyz - v7;
    vec4 v12 = vec4(v4, v5, v6, 1.0);
    vec4 v13 = v12 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    gl_Position = v13;
    VARYING0 = vec4(TEXCOORD0, 0.0, 0.0);
    VARYING1 = vec4(TEXCOORD1, 0.0, 0.0);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((v7 + (v8 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz, 0.0);
    VARYING4 = vec4(v11, v13.w);
    VARYING5 = vec4((CB0[10].xyz * max(v10, 0.0)) + (CB0[12].xyz * max(-v10, 0.0)), ((float(v10 > 0.0) * pow(clamp(dot(v8, normalize(v9 + normalize(v11))), 0.0, 1.0), COLOR1.z)) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[23].w);
    VARYING6 = vec4(dot(CB0[20], v12), dot(CB0[21], v12), dot(CB0[22], v12), 0.0);
    VARYING7 = NORMAL.w;
}

