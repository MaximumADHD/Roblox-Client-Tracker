#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
varying vec4 VARYING2;
varying vec4 VARYING4;

void main()
{
    float f0 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f1 = sqrt(clamp(mix(CB0[14].xyz, (pow(VARYING2.xyz * 1.35000002384185791015625, vec3(4.0)) * 4.0).xyz, vec3(f0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f2 = vec4(f1.x, f1.y, f1.z, vec4(0.0).w);
    f2.w = 1.0 - (clamp(f0, 0.0, 1.0) * VARYING2.w);
    gl_FragData[0] = f2;
}

