#version 110

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
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;

varying vec3 VARYING0;

void main()
{
    float f0 = clamp(dot(step(CB0[19].xyz, abs(VARYING0 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING0.yzx - (VARYING0.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture3D(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture3D(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = (min(((f3.xyz * (f3.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f4.x), vec3(CB0[16].w)) + (CB0[10].xyz * f4.y)) * 0.008333333767950534820556640625;
    float f6 = ceil(clamp(max(max(f5.x, f5.y), max(f5.z, 0.0500000007450580596923828125)), 0.0, 1.0) * 255.0) * 0.0039215688593685626983642578125;
    vec4 f7 = vec4(0.0);
    f7.w = f6;
    vec3 f8 = f5 / vec3(f6);
    gl_FragData[0] = vec4(f8.x, f8.y, f8.z, f7.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
