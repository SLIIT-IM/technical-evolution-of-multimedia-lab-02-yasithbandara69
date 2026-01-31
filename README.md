# SE2011 – Technical Evolution of Multimedia  
## LAB SHEET 02 (2 Hours)  
### Control Structures in Processing  
*(Variables, Conditions & Loops)*

---

## 1. Lab Objective
To introduce fundamental **control structures** in Processing and enable students to create visually engaging designs using **variables**, **conditional logic**, and **repetition**.

---

## 2. Lab Learning Outcomes (LOs)
By the end of this lab, students will be able to:

1. Declare and use **variables** to control visual elements  
2. Apply **conditional statements** (`if`, `else`) to change visual behavior  
3. Use **for loops** to repeat shapes and generate patterns  
4. Combine **logic and repetition** to create structured creative visuals  

---

## 4. Tools Required
- **Processing IDE (Java Mode)**
- Completed **Lab 01** knowledge

---

## 5. Step-by-Step Lab Instructions

---

**Part A: Quick Revision from Lab 01**

Before starting, confirm that you understand:

- `setup()` runs **once**
- `draw()` runs **repeatedly**
- Shapes use **(x, y)** coordinates
- `fill()` controls **color**

*If unsure, revise Lab 01 before continuing.*

---

**Part B: Understanding Variables**

### Step B1: Declaring Variables
At the **top of your sketch**, type:

```java
int x = 200;
int y = 150;
```
### Explanation
- `int` means **integer** (a whole number)  
- Variables store values that can be **reused** throughout the program
### Step B2: Using Variables in Shapes

Add or update your `draw()` function as follows:

```java
void draw() {
  background(255);
  ellipse(x, y, 80, 80);
}
```
▶ **Run the program**

A circle appears at **(200, 150)** on the canvas

### Practice Task (Self-Guided)
1. Change the value of `x`  
2. Change the value of `y`  
3. Run the sketch and observe how the circle moves  

###  Key Idea
Variables allow **easy control** of position and size.

 **Part C: Making Visuals Respond Using IF**

### Step C1: Understanding Conditional Logic
Use this code to change color based on the mouse position:

```java
void draw() {
  background(255);

  if (mouseX > width/2) {
    fill(255, 0, 0);
  } else {
    fill(0, 0, 255);
  }

  ellipse(mouseX, mouseY, 50, 50);
}
```

### Explanation
- `if` checks a **condition**  
- If the condition is **true** → the first block runs  
- If the condition is **false** → the `else` block runs  
- The screen is divided into **left** and **right** halves

### Observation Task
1. Move the mouse **left and right**  
2. Observe how the **color changes**  
3. Change the colors to your **own choice**

**Part D: Using IF with Variables**

### Step D1: Change a Variable Using `if`
Use this code to change the circle size based on the mouse position:

```java
int size = 40;

void draw() {
  background(255);

  if (mouseY < height/2) {
    size = 80;
  } else {
    size = 40;
  }

  ellipse(width/2, height/2, size, size);
}
```

### Explanation
- Conditions can control **size**, not just color  
- Logic controls the **appearance** of visual elements

**Part E: Repetition with FOR Loops**

### Step E1: Basic Loop Structure
Use a `for` loop to repeat shapes across the screen:

```java
void draw() {
  background(255);

  for (int i = 0; i < width; i += 40) {
    ellipse(i, height/2, 30, 30);
  }
}
```

### Explanation
- A `for` loop repeats drawing steps automatically  
- `i += 40` controls the **spacing** between shapes  

### Practice Task
1. Change spacing (`40 → 20` or `60`)  
2. Change the **shape size**  
3. Change direction (**vertical** instead of horizontal)

**Part F: Combining IF + LOOP**

### Step F1: Use `if` inside a `for` loop
This code repeats circles across the screen, and changes color for some of them:

```java
void draw() {
  background(255);

  for (int i = 0; i < width; i += 50) {
    if (i % 100 == 0) {
      fill(255, 0, 0);
    } else {
      fill(0);
    }
    ellipse(i, height/2, 30, 30);
  }
}
```

### Concept Introduced
- Alternating patterns  
- Logical visual structure  

---

##  6. Guided Creative Task

### Task Title: Create a Logic-Based Pattern Artwork

Follow these **mandatory steps**:

1. Use at least **one `for` loop**
2. Use at least **one `if / else`** condition
3. Create a **repeating visual pattern**
4. Use **two or more colors**
5. The pattern should cover **most of the canvas**

 **Do NOT animate yet.**

##  7. Reflection & Self-Check

Answer briefly:

1. What is a **variable**?  
2. How does an **if statement** work?  
3. Why are **loops** useful in creative coding?


