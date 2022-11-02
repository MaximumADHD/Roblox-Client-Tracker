#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

in vec2 VARYING0;
in vec3 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec2 f2 = VARYING1.xy;
    f2.y = (fract(VARYING1.y) + VARYING1.z) * 0.25;
    vec4 f3 = texture(NormalMapTexture, f2);
    vec2 f4 = f3.wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec3 f7 = vec3(f5, f6);
    vec2 f8 = f7.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f9 = f7;
    f9.x = f8.x;
    vec3 f10 = f9;
    f10.y = f8.y;
    vec2 f11 = f10.xy * (clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y * CB2[3].w);
    vec4 f12 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w);
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f11.x) + (cross(f15, f14) * f11.y)) + (f15 * f6));
    vec3 f17 = f12.xyz;
    vec3 f18 = f17 * f17;
    vec4 f19 = f12;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f23 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f24 = -f1;
    vec3 f25 = reflect(f24, f16);
    float f26 = (!(VARYING7.w == 0.0)) ? 0.0 : (f23 * 5.0);
    vec3 f27 = vec4(f25, f26).xyz;
    vec3 f28 = textureLod(PrefilteredEnvTexture, f27, f26).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f25.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f29 = textureLod(PrefilteredEnvIndoorTexture, f27, f26).xyz;
    vec3 f30;
    if (CB0[32].w == 0.0)
    {
        f30 = f29;
    }
    else
    {
        f30 = mix(f29, textureLod(PrefilteredEnvBlendTargetTexture, f27, f26).xyz, vec3(CB0[32].w));
    }
    vec4 f31 = texture(PrecomputedBRDFTexture, vec2(f23, max(9.9999997473787516355514526367188e-05, dot(f16, f1))));
    vec3 f32 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f33 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f34 = VARYING3.yzx - (VARYING3.yzx * f33);
    vec4 f35 = vec4(clamp(f33, 0.0, 1.0));
    vec4 f36 = mix(texture(LightMapTexture, f34), vec4(0.0), f35);
    vec4 f37 = mix(texture(LightGridSkylightTexture, f34), vec4(1.0), f35);
    float f38 = f37.x;
    vec4 f39 = texture(ShadowMapTexture, f32.xy);
    float f40 = f32.z;
    vec3 f41 = -CB0[16].xyz;
    float f42 = dot(f16, f41) * ((1.0 - ((step(f39.x, f40) * clamp(CB0[29].z + (CB0[29].w * abs(f40 - 0.5)), 0.0, 1.0)) * f39.y)) * f37.y);
    vec3 f43 = normalize(f1 - CB0[16].xyz);
    float f44 = clamp(f42, 0.0, 1.0);
    float f45 = f23 * f23;
    float f46 = max(0.001000000047497451305389404296875, dot(f16, f43));
    float f47 = dot(f41, f43);
    float f48 = 1.0 - f47;
    float f49 = f48 * f48;
    float f50 = (f49 * f49) * f48;
    vec3 f51 = vec3(f50) + (vec3(0.039999999105930328369140625) * (1.0 - f50));
    float f52 = f45 * f45;
    float f53 = (((f46 * f52) - f46) * f46) + 1.0;
    float f54 = f31.x;
    float f55 = f31.y;
    vec3 f56 = ((vec3(0.039999999105930328369140625) * f54) + vec3(f55)) / vec3(f54 + f55);
    vec3 f57 = f16 * f16;
    bvec3 f58 = lessThan(f16, vec3(0.0));
    vec3 f59 = vec3(f58.x ? f57.x : vec3(0.0).x, f58.y ? f57.y : vec3(0.0).y, f58.z ? f57.z : vec3(0.0).z);
    vec3 f60 = f57 - f59;
    float f61 = f60.x;
    float f62 = f60.y;
    float f63 = f60.z;
    float f64 = f59.x;
    float f65 = f59.y;
    float f66 = f59.z;
    vec3 f67 = (((((f36.xyz * (f36.w * 120.0)) + ((((vec3(1.0) - (f51 * f22)) * CB0[15].xyz) * f44) + (CB0[17].xyz * clamp(-f42, 0.0, 1.0)))) + (((vec3(1.0) - (f56 * f22)) * (((((((CB0[40].xyz * f61) + (CB0[42].xyz * f62)) + (CB0[44].xyz * f63)) + (CB0[41].xyz * f64)) + (CB0[43].xyz * f65)) + (CB0[45].xyz * f66)) + (((((((CB0[34].xyz * f61) + (CB0[36].xyz * f62)) + (CB0[38].xyz * f63)) + (CB0[35].xyz * f64)) + (CB0[37].xyz * f65)) + (CB0[39].xyz * f66)) * f38))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f38)) * 1.0)) * mix(f21.xyz, f28, vec3(VARYING7.w))) + ((((f51 * (((f52 + (f52 * f52)) / max(((f53 * f53) * ((f47 * 3.0) + 0.5)) * ((f46 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f44)) * CB0[15].xyz) * 1.0) + ((mix(f30, f28, vec3(f38)) * f56) * f22));
    vec4 f68 = vec4(0.0);
    f68.x = f67.x;
    vec4 f69 = f68;
    f69.y = f67.y;
    vec4 f70 = f69;
    f70.z = f67.z;
    vec4 f71 = f70;
    f71.w = VARYING2.w;
    float f72 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f73 = textureLod(PrefilteredEnvTexture, vec4(f24, 0.0).xyz, max(CB0[18].y, f72) * 5.0).xyz;
    bvec3 f74 = bvec3(!(CB0[18].w == 0.0));
    vec3 f75 = mix(vec3(f74.x ? CB0[19].xyz.x : f73.x, f74.y ? CB0[19].xyz.y : f73.y, f74.z ? CB0[19].xyz.z : f73.z), f71.xyz, vec3(f72));
    vec4 f76 = f71;
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    vec4 f78 = f77;
    f78.z = f75.z;
    vec3 f79 = sqrt(clamp(f78.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f80 = f78;
    f80.x = f79.x;
    vec4 f81 = f80;
    f81.y = f79.y;
    vec4 f82 = f81;
    f82.z = f79.z;
    vec4 f83 = f82;
    f83.w = VARYING2.w;
    _entryPointOutput = f83;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
