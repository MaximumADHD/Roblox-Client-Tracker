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
    float f3 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec4 f4 = texture(NormalMapTexture, f2);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * (f3 * CB2[3].w);
    vec4 f13 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f12.x) + (cross(f16, f15) * f12.y)) + (f16 * f7));
    vec3 f18 = f13.xyz;
    vec3 f19 = f18 * f18;
    vec4 f20 = f13;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    float f23 = CB0[31].w * f3;
    float f24 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f25 = -f1;
    vec3 f26 = reflect(f25, f17);
    float f27 = (!(VARYING7.w == 0.0)) ? 0.0 : (f24 * 5.0);
    vec3 f28 = vec4(f26, f27).xyz;
    vec3 f29 = textureLod(PrefilteredEnvTexture, f28, f27).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f26.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f30 = textureLod(PrefilteredEnvIndoorTexture, f28, f27).xyz;
    vec3 f31;
    if (CB0[32].w == 0.0)
    {
        f31 = f30;
    }
    else
    {
        f31 = mix(f30, textureLod(PrefilteredEnvBlendTargetTexture, f28, f27).xyz, vec3(CB0[32].w));
    }
    vec4 f32 = texture(PrecomputedBRDFTexture, vec2(f24, max(9.9999997473787516355514526367188e-05, dot(f17, f1))));
    vec3 f33 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f34 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f35 = VARYING3.yzx - (VARYING3.yzx * f34);
    vec4 f36 = vec4(clamp(f34, 0.0, 1.0));
    vec4 f37 = mix(texture(LightMapTexture, f35), vec4(0.0), f36);
    vec4 f38 = mix(texture(LightGridSkylightTexture, f35), vec4(1.0), f36);
    float f39 = f38.x;
    vec4 f40 = texture(ShadowMapTexture, f33.xy);
    float f41 = f33.z;
    vec3 f42 = -CB0[16].xyz;
    float f43 = dot(f17, f42) * ((1.0 - ((step(f40.x, f41) * clamp(CB0[29].z + (CB0[29].w * abs(f41 - 0.5)), 0.0, 1.0)) * f40.y)) * f38.y);
    vec3 f44 = normalize(f1 - CB0[16].xyz);
    float f45 = clamp(f43, 0.0, 1.0);
    float f46 = f24 * f24;
    float f47 = max(0.001000000047497451305389404296875, dot(f17, f44));
    float f48 = dot(f42, f44);
    float f49 = 1.0 - f48;
    float f50 = f49 * f49;
    float f51 = (f50 * f50) * f49;
    vec3 f52 = vec3(f51) + (vec3(0.039999999105930328369140625) * (1.0 - f51));
    float f53 = f46 * f46;
    float f54 = (((f47 * f53) - f47) * f47) + 1.0;
    float f55 = f32.x;
    float f56 = f32.y;
    vec3 f57 = ((vec3(0.039999999105930328369140625) * f55) + vec3(f56)) / vec3(f55 + f56);
    vec3 f58 = f17 * f17;
    bvec3 f59 = lessThan(f17, vec3(0.0));
    vec3 f60 = vec3(f59.x ? f58.x : vec3(0.0).x, f59.y ? f58.y : vec3(0.0).y, f59.z ? f58.z : vec3(0.0).z);
    vec3 f61 = f58 - f60;
    float f62 = f61.x;
    float f63 = f61.y;
    float f64 = f61.z;
    float f65 = f60.x;
    float f66 = f60.y;
    float f67 = f60.z;
    vec3 f68 = ((((((f37.xyz * (f37.w * 120.0)) * 1.0) + ((((vec3(1.0) - (f52 * f23)) * CB0[15].xyz) * f45) + (CB0[17].xyz * clamp(-f43, 0.0, 1.0)))) + ((vec3(1.0) - (f57 * f23)) * (((((((CB0[40].xyz * f62) + (CB0[42].xyz * f63)) + (CB0[44].xyz * f64)) + (CB0[41].xyz * f65)) + (CB0[43].xyz * f66)) + (CB0[45].xyz * f67)) + (((((((CB0[34].xyz * f62) + (CB0[36].xyz * f63)) + (CB0[38].xyz * f64)) + (CB0[35].xyz * f65)) + (CB0[37].xyz * f66)) + (CB0[39].xyz * f67)) * f39)))) + ((CB0[32].xyz + (CB0[33].xyz * f39)) * 1.0)) * mix(f22.xyz, f29, vec3(VARYING7.w))) + ((((f52 * (((f53 + (f53 * f53)) / max(((f54 * f54) * ((f48 * 3.0) + 0.5)) * ((f47 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f45)) * CB0[15].xyz) * 1.0) + ((mix(f31, f29, vec3(f39)) * f57) * f23));
    vec4 f69 = vec4(0.0);
    f69.x = f68.x;
    vec4 f70 = f69;
    f70.y = f68.y;
    vec4 f71 = f70;
    f71.z = f68.z;
    vec4 f72 = f71;
    f72.w = VARYING2.w;
    float f73 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f74 = textureLod(PrefilteredEnvTexture, vec4(f25, 0.0).xyz, max(CB0[18].y, f73) * 5.0).xyz;
    bvec3 f75 = bvec3(!(CB0[18].w == 0.0));
    vec3 f76 = mix(vec3(f75.x ? CB0[19].xyz.x : f74.x, f75.y ? CB0[19].xyz.y : f74.y, f75.z ? CB0[19].xyz.z : f74.z), f72.xyz, vec3(f73));
    vec4 f77 = f72;
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec3 f80 = sqrt(clamp(f79.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f81 = f79;
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    vec4 f84 = f83;
    f84.w = VARYING2.w;
    _entryPointOutput = f84;
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
