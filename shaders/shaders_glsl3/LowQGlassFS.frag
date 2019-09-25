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

uniform vec4 CB0[32];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform samplerCube EnvironmentMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = (texture(DiffuseMapTexture, VARYING0.xy).xyz * VARYING2.xyz).xyz;
    float f1 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f2 = VARYING3.yzx - (VARYING3.yzx * f1);
    vec4 f3 = vec4(clamp(f1, 0.0, 1.0));
    vec4 f4 = mix(texture(LightMapTexture, f2), vec4(0.0), f3);
    vec4 f5 = mix(texture(LightGridSkylightTexture, f2), vec4(1.0), f3);
    float f6 = f5.x;
    vec4 f7 = texture(ShadowMapTexture, VARYING7.xy);
    float f8 = (1.0 - ((step(f7.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f7.y)) * f5.y;
    vec3 f9 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, VARYING5.xyz)).xyz;
    vec3 f10 = ((min(((f4.xyz * (f4.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f6), vec3(CB0[17].w)) + (VARYING6.xyz * f8)) * ((mix(vec3(1.0), (f9 * f9) * CB0[15].x, vec3(f6)) * VARYING7.w) + ((f0 * f0).xyz * (VARYING2.w - VARYING7.w))).xyz) + (CB0[10].xyz * (VARYING6.w * f8));
    vec4 f11 = vec4(f10.x, f10.y, f10.z, vec4(0.0).w);
    f11.w = VARYING2.w;
    vec3 f12 = sqrt(clamp(f11.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = mix(vec4(CB0[14].xyz, 1.0), vec4(f12.x, f12.y, f12.z, f11.w), vec4(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$EnvironmentMapTexture=s2
