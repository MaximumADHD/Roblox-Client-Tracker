#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec4 f1 = f0 * VARYING1;
    vec3 f2 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f3 = f1.xyz;
    vec3 f4 = f3 * f3;
    vec4 f5 = f1;
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    float f8 = length(VARYING3.xyz);
    vec3 f9 = VARYING3.xyz / vec3(f8);
    float f10 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f11 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f12 = -f9;
    vec3 f13 = reflect(f12, f2);
    float f14 = VARYING5.w * f10;
    vec3 f15 = mix(vec3(0.039999999105930328369140625), f7.xyz, vec3(f14));
    vec3 f16 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f17 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING2.yzx - (VARYING2.yzx * f17);
    vec4 f19 = texture(LightMapTexture, f18);
    vec4 f20 = texture(LightGridSkylightTexture, f18);
    vec4 f21 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f22 = mix(f19, vec4(0.0), f21);
    vec4 f23 = mix(f20, vec4(1.0), f21);
    float f24 = f23.x;
    vec4 f25 = texture(ShadowMapTexture, f16.xy);
    float f26 = f16.z;
    float f27 = f11 * 5.0;
    vec3 f28 = vec4(f13, f27).xyz;
    vec3 f29 = textureLod(PrefilteredEnvIndoorTexture, f28, f27).xyz;
    vec3 f30;
    if (CB0[32].w == 0.0)
    {
        f30 = f29;
    }
    else
    {
        f30 = mix(f29, textureLod(PrefilteredEnvBlendTargetTexture, f28, f27).xyz, vec3(CB0[32].w));
    }
    vec4 f31 = texture(PrecomputedBRDFTexture, vec2(f11, max(9.9999997473787516355514526367188e-05, dot(f2, f9))));
    float f32 = f31.x;
    float f33 = f31.y;
    vec3 f34 = ((f15 * f32) + vec3(f33)) / vec3(f32 + f33);
    float f35 = 1.0 - f14;
    float f36 = f10 * f35;
    vec3 f37 = vec3(f35);
    vec3 f38 = f2 * f2;
    bvec3 f39 = lessThan(f2, vec3(0.0));
    vec3 f40 = vec3(f39.x ? f38.x : vec3(0.0).x, f39.y ? f38.y : vec3(0.0).y, f39.z ? f38.z : vec3(0.0).z);
    vec3 f41 = f38 - f40;
    float f42 = f41.x;
    float f43 = f41.y;
    float f44 = f41.z;
    float f45 = f40.x;
    float f46 = f40.y;
    float f47 = f40.z;
    vec3 f48 = -CB0[16].xyz;
    float f49 = dot(f2, f48) * ((1.0 - ((step(f25.x, f26) * clamp(CB0[29].z + (CB0[29].w * abs(f26 - 0.5)), 0.0, 1.0)) * f25.y)) * f23.y);
    vec3 f50 = normalize(f9 + f48);
    float f51 = clamp(f49, 0.0, 1.0);
    float f52 = f11 * f11;
    float f53 = max(0.001000000047497451305389404296875, dot(f2, f50));
    float f54 = dot(f48, f50);
    float f55 = 1.0 - f54;
    float f56 = f55 * f55;
    float f57 = (f56 * f56) * f55;
    vec3 f58 = vec3(f57) + (f15 * (1.0 - f57));
    float f59 = f52 * f52;
    float f60 = (((f53 * f59) - f53) * f53) + 1.0;
    vec3 f61 = (((((((f37 - (f34 * f36)) * (((((((CB0[40].xyz * f42) + (CB0[42].xyz * f43)) + (CB0[44].xyz * f44)) + (CB0[41].xyz * f45)) + (CB0[43].xyz * f46)) + (CB0[45].xyz * f47)) + (((((((CB0[34].xyz * f42) + (CB0[36].xyz * f43)) + (CB0[38].xyz * f44)) + (CB0[35].xyz * f45)) + (CB0[37].xyz * f46)) + (CB0[39].xyz * f47)) * f24))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f24)) * 1.0)) + ((((f37 - (f58 * f36)) * CB0[15].xyz) * f51) + (CB0[17].xyz * (f35 * clamp(-f49, 0.0, 1.0))))) + (f22.xyz * (f22.w * 120.0))) * f7.xyz) + (((mix(f30, textureLod(PrefilteredEnvTexture, f28, f27).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f13.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f24)) * f34) * f10) + (((f58 * (((f59 + (f59 * f59)) / (((f60 * f60) * ((f54 * 3.0) + 0.5)) * ((f53 * 0.75) + 0.25))) * f51)) * CB0[15].xyz) * 1.0));
    vec4 f62 = vec4(0.0);
    f62.x = f61.x;
    vec4 f63 = f62;
    f63.y = f61.y;
    vec4 f64 = f63;
    f64.z = f61.z;
    float f65 = f1.w;
    vec4 f66 = f64;
    f66.w = f65;
    float f67 = clamp(exp2((CB0[18].z * f8) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f68 = textureLod(PrefilteredEnvTexture, vec4(f12, 0.0).xyz, max(CB0[18].y, f67) * 5.0).xyz;
    bvec3 f69 = bvec3(!(CB0[18].w == 0.0));
    vec3 f70 = mix(vec3(f69.x ? CB0[19].xyz.x : f68.x, f69.y ? CB0[19].xyz.y : f68.y, f69.z ? CB0[19].xyz.z : f68.z), f66.xyz, vec3(f67));
    vec4 f71 = f66;
    f71.x = f70.x;
    vec4 f72 = f71;
    f72.y = f70.y;
    vec4 f73 = f72;
    f73.z = f70.z;
    vec3 f74 = sqrt(clamp(f73.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f75 = f73;
    f75.x = f74.x;
    vec4 f76 = f75;
    f76.y = f74.y;
    vec4 f77 = f76;
    f77.z = f74.z;
    vec4 f78 = f77;
    f78.w = f65;
    _entryPointOutput = f78;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
