#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f1 = f0.xyz;
    vec3 f2 = sqrt(clamp(mix(CB0[14].xyz, (f1 * f1).xyz, vec3(clamp(exp2((CB0[13].z * length(VARYING2)) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f2.x, f2.y, f2.z, f0.w);
}

//$$DiffuseMapTexture=s0
