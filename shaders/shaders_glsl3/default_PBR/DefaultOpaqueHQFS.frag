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
    float debugFlagsShadows;
};

uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = (texture(DiffuseMapTexture, VARYING0.xy) * VARYING2).xyz;
    float f1 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f2 = VARYING3.yzx - (VARYING3.yzx * f1);
    vec4 f3 = vec4(clamp(f1, 0.0, 1.0));
    vec4 f4 = mix(texture(LightMapTexture, f2), vec4(0.0), f3);
    vec4 f5 = mix(texture(LightGridSkylightTexture, f2), vec4(1.0), f3);
    vec4 f6 = texture(ShadowMapTexture, VARYING6.xy);
    float f7 = (1.0 - ((step(f6.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f6.y)) * f5.y;
    vec3 f8 = (f0 * f0).xyz;
    float f9 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec3 f10 = normalize(VARYING5.xyz);
    float f11 = max(VARYING5.w, 0.04500000178813934326171875);
    float f12 = VARYING6.w * f9;
    vec3 f13 = -CB0[11].xyz;
    vec3 f14 = normalize(f13 + normalize(VARYING4.xyz));
    float f15 = dot(f10, f13);
    float f16 = clamp(f15, 0.0, 1.0);
    float f17 = f11 * f11;
    float f18 = max(0.001000000047497451305389404296875, dot(f10, f14));
    float f19 = dot(f13, f14);
    float f20 = 1.0 - f19;
    float f21 = f20 * f20;
    float f22 = (f21 * f21) * f20;
    vec3 f23 = vec3(f22) + (mix(vec3(0.039999999105930328369140625), f8, vec3(f12)) * (1.0 - f22));
    float f24 = f17 * f17;
    float f25 = (((f18 * f24) - f18) * f18) + 1.0;
    float f26 = 1.0 - f12;
    vec3 f27 = ((((((((vec3(1.0) - (f23 * f9)) * f26) * CB0[10].xyz) * f16) + ((CB0[12].xyz * f26) * clamp(-f15, 0.0, 1.0))) * f7) + min((f4.xyz * (f4.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f5.x)), vec3(CB0[16].w))) * f8) + ((((f23 * ((f24 + (f24 * f24)) / (((f25 * f25) * ((f19 * 3.0) + 0.5)) * ((f18 * 0.75) + 0.25)))) * CB0[10].xyz) * f16) * f7);
    vec4 f28 = vec4(f27.x, f27.y, f27.z, vec4(0.0).w);
    f28.w = 1.0;
    vec3 f29 = mix(CB0[14].xyz, (sqrt(clamp(f28.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f29.x, f29.y, f29.z, f28.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
