#version 110

varying vec3 VARYING0;

void main()
{
    gl_FragData[0] = vec4(VARYING0.z, 1.0, 0.0, 0.0);
}

