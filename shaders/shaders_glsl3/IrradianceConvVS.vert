#version 150

uniform vec4 CB3[1];
in vec4 POSITION;

void main()
{
    vec4 v0 = POSITION;
    v0.x = (POSITION.x * 0.083333335816860198974609375) + CB3[0].w;
    gl_Position = v0;
}

