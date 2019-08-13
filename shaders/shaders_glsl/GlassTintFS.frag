#version 110

varying vec4 VARYING2;

void main()
{
    vec3 f0 = mix(vec3(1.0), VARYING2.xyz, vec3(clamp(VARYING2.w * 2.0, 0.0, 1.0)));
    gl_FragData[0] = vec4(f0, 3.0 - dot(f0, vec3(1.0)));
}

