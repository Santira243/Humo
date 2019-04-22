/**
 * Smoke Particle System
 * by Daniel Shiffman.
 *
 * A basic smoke effect using a particle system. Each particle
 * is rendered as an alpha masked image.
 */

ParticleSystem ps,ps2;

void setup() {
  size(1100, 600);
  PImage img = loadImage("sprite.png");
  ps = new ParticleSystem(1, new PVector(width/2-100, height/2), img);
  ps2 = new ParticleSystem(1, new PVector(width/2+100, height/2), img);
}

void draw() {
  background(0);
  PVector mous;
  mous = new PVector(mouseX, mouseY);
  ps.move(mous);
  ps2.applyForce(); 
  ps2.run();
  ps.applyForce(); 
  ps.run();
  for (int i = 0; i < 10; i++) {
    ps.addParticle();
    ps2.addParticle();
    
  }

  // Draw an arrow representing the wind force
}
