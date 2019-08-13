#version 150

in vec3 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = vec4(VARYING0.z, 1.0, 0.0, 0.0);
}

