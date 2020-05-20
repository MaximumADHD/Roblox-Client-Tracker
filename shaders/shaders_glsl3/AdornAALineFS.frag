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

struct AdornParams
{
    mat4 World;
    vec4 Color;
    vec4 Params;
};

uniform vec4 CB0[47];
uniform vec4 CB1[6];
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (VARYING3 / vec4(VARYING3.w)).xy;
    vec2 f1 = (VARYING2 / vec4(VARYING2.w)).xy;
    vec2 f2 = normalize(f0 - f1);
    vec2 f3 = (VARYING0 / vec4(VARYING0.w)).xy;
    vec2 f4 = f3 - f1;
    if ((dot(f2, f4) < 0.0) && (dot(f2, (-f3) + f0) < 0.0))
    {
        discard;
    }
    vec4 f5 = vec4(1.0);
    f5.w = clamp(((CB1[5].w * 0.5) + 0.5) - ((abs(dot(vec2(f2.y, -f2.x), f4)) * 0.5) * CB1[5].y), 0.0, 1.0);
    vec4 f6 = f5 * CB1[4];
    float f7 = pow(clamp(1.0 - f6.w, 0.0, 1.0), 0.4545454680919647216796875);
    vec4 f8 = f6;
    f8.w = f7;
    vec4 f9 = f8;
    f9.w = 1.0 - f7;
    float f10 = clamp(exp2((CB0[13].z * length(VARYING1)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f11 = textureLod(PrefilteredEnvTexture, vec4(-VARYING1, 0.0).xyz, max(CB0[13].y, f10) * 5.0).xyz;
    bvec3 f12 = bvec3(CB0[13].w != 0.0);
    vec3 f13 = sqrt(clamp(mix(vec3(f12.x ? CB0[14].xyz.x : f11.x, f12.y ? CB0[14].xyz.y : f11.y, f12.z ? CB0[14].xyz.z : f11.z), (f9.xyz * f9.xyz).xyz, vec3(f10)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f13.x, f13.y, f13.z, f9.w);
}

//$$PrefilteredEnvTexture=s15
