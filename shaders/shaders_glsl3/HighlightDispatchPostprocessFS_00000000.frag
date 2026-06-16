#version 150

flat in uint VARYING0;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = vec4(float(VARYING0 & 255u) * 0.0039215688593685626983642578125, 0.0, 0.0, 1.0);
}

