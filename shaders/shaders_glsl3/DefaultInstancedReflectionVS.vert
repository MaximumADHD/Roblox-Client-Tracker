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
    vec4 Exposure_DoFDistance;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
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
    float debugFlags;
};

struct Instance
{
    vec4 row0;
    vec4 row1;
    vec4 row2;
    vec4 scale;
    vec4 color;
    vec4 uvScale;
    vec4 uvOffset;
};

const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

uniform vec4 CB0[47];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 NORMAL;
in vec4 TEXCOORD0;
in vec4 TEXCOORD2;
in vec4 COLOR0;
out vec2 VARYING0;
out vec2 VARYING1;
out vec4 VARYING2;
out vec3 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out float VARYING8;

void main()
{
    int v2 = int(NORMAL.w);
    vec3 v3 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 v4 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v5 = vec4(v4.x, v4.y, v4.z, POSITION.w);
    float v6 = dot(CB1[gl_InstanceID * 7 + 0], v5);
    float v7 = dot(CB1[gl_InstanceID * 7 + 1], v5);
    float v8 = dot(CB1[gl_InstanceID * 7 + 2], v5);
    vec3 v9 = vec3(v6, v7, v8);
    float v10 = dot(CB1[gl_InstanceID * 7 + 0].xyz, v3);
    float v11 = dot(CB1[gl_InstanceID * 7 + 1].xyz, v3);
    float v12 = dot(CB1[gl_InstanceID * 7 + 2].xyz, v3);
    vec3 v13 = vec3(v10, v11, v12);
    vec2 v14 = vec2(0.0);
    v14.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v15 = v14;
    v15.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v16 = v15;
    v16.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, v0[v2]);
    vec2 v17 = v16;
    v17.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, v1[v2]);
    vec3 v18 = -CB0[11].xyz;
    float v19 = dot(v13, v18);
    vec3 v20 = CB0[7].xyz - v9;
    vec4 v21 = vec4(v6, v7, v8, 1.0);
    vec4 v22 = v21 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v23 = vec4(dot(CB0[20], v21), dot(CB0[21], v21), dot(CB0[22], v21), 0.0);
    v23.w = CB1[gl_InstanceID * 7 + 5].w;
    float v24 = CB1[gl_InstanceID * 7 + 6].z * 0.50359570980072021484375;
    float v25 = clamp(v19, 0.0, 1.0);
    vec3 v26 = (CB0[10].xyz * v25) + (CB0[12].xyz * clamp(-v19, 0.0, 1.0));
    vec4 v27 = vec4(v26.x, v26.y, v26.z, vec4(0.0).w);
    v27.w = (v25 * CB0[23].w) * (CB1[gl_InstanceID * 7 + 6].z * exp2((v24 * dot(v13, normalize(v18 + normalize(v20)))) - v24));
    gl_Position = v22;
    VARYING0 = (TEXCOORD0.xy * v15) + CB1[gl_InstanceID * 7 + 6].xy;
    VARYING1 = TEXCOORD0.zw * v17;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(float(CB1[gl_InstanceID * 7 + 3].w > 0.0)));
    VARYING3 = ((v9 + (v13 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING4 = vec4(v20, v22.w);
    VARYING5 = vec4(v10, v11, v12, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = v27;
    VARYING7 = v23;
    VARYING8 = TEXCOORD2.w - 1.0;
}

