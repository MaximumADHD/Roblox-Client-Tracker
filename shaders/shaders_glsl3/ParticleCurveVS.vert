#version 150

struct EmitterParams
{
    vec4 ModulateColor;
    vec4 Params;
    vec4 AtlasParams;
};

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
    vec4 Technology_Exposure;
    vec4 LightBorder;
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

uniform vec4 CB1[3];
uniform vec4 CB0[32];
in vec4 POSITION;
in vec4 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 TEXCOORD2;
in vec2 TEXCOORD3;
out vec3 VARYING0;
out vec4 VARYING1;
out vec2 VARYING2;

void main()
{
    vec2 v0 = (TEXCOORD1 * 2.0) - vec2(1.0);
    vec4 v1 = TEXCOORD0 * vec4(0.00390625, 0.00390625, 0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    vec2 v2 = v1.xy + vec2(127.0);
    float v3 = v1.z;
    float v4 = cos(v3);
    float v5 = sin(v3);
    float v6 = v2.x;
    vec4 v7 = vec4(0.0);
    v7.x = v4 * v6;
    vec4 v8 = v7;
    v8.y = (-v5) * v6;
    float v9 = v2.y;
    vec4 v10 = v8;
    v10.z = v5 * v9;
    vec4 v11 = v10;
    v11.w = v4 * v9;
    vec4 v12 = (vec4(POSITION.xyz, 1.0) + (CB0[4] * dot(v0, v11.xy))) + (CB0[5] * dot(v0, v11.zw));
    mat4 v13 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v14 = v12 * v13;
    vec3 v15 = vec3(TEXCOORD1.x, TEXCOORD1.y, vec3(0.0).z);
    v15.y = 1.0 - TEXCOORD1.y;
    vec3 v16 = v15;
    v16.z = (CB0[13].x * length(CB0[7].xyz - POSITION.xyz)) + CB0[13].y;
    vec4 v17 = (v12 + (CB0[6] * CB1[1].x)) * v13;
    vec4 v18 = v14;
    v18.z = (v17.z * v14.w) / v17.w;
    vec2 v19 = (TEXCOORD3 + ((TEXCOORD1 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v20 = v19;
    v20.y = 1.0 - v19.y;
    gl_Position = v18;
    VARYING0 = v16;
    VARYING1 = TEXCOORD2 * 0.0039215688593685626983642578125;
    VARYING2 = v20;
}

