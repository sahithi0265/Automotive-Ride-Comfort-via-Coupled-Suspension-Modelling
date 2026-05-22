# Integrated Multi-Objective Optimization Framework for Automotive Passenger Comfort and Handling via Coupled Biodynamic–Vehicle Suspension Modelling

## Project Overview

Passenger comfort and ride quality are major performance indicators in modern automotive systems. Road irregularities, vibrations, and suspension dynamics directly influence passenger experience, safety, and vehicle handling.

This project focuses on developing a mathematical and simulation-based framework for evaluating passenger comfort in automotive suspension systems under real-time driving conditions. A coupled vehicle–human biodynamic model is developed to simulate the effect of road vibrations on passenger comfort and suspension performance.

The system evaluates ride comfort by changing damping characteristics based on internationally accepted vibration standards and validates performance through both simulation and hardware testing environments.

---

## Challenge Overview

Automotive passengers experience vibrations caused by uneven road conditions, vehicle motion, and suspension characteristics. Conventional suspension systems often fail to maintain an optimal balance between:

- Passenger comfort  
- Ride stability  
- Vehicle handling  

The challenge was to establish and validate a mathematical model capable of accurately representing passenger comfort parameters within a suspension system under real-world driving conditions.

The model should:

- Simulate real-time comfort dynamics  
- Process practical sensor data  
- Support ECU deployment  
- Correlate theoretical predictions with actual ride experiences  

---

## Our Proposed Solution

We developed an **Integrated Multi-Objective Optimization Framework** by combining vehicle suspension modelling, human biodynamic modelling, real-time comfort evaluation, and hardware validation.

### 1. Vehicle Suspension Modelling
A mathematical semi-active suspension model was designed to replicate real automotive suspension behavior under varying road conditions.

### 2. Human Biodynamic Modelling
A coupled biodynamic human model was integrated to study how vibrations transfer from the vehicle to the passenger body.

Our approach combines a mathematical suspension model with a full-car and human biodynamic system simulated under realistic road vibration profiles.

### 3. Real-Time Comfort Evaluation
The framework calculates multiple ride comfort metrics from acceleration signals, including:

- **RMS (Root Mean Square)** — evaluates overall vibration intensity  
- **VDV (Vibration Dose Value)** — measures vibration exposure severity  
- **Shock Index (SI)** — determines sudden vibration impact on passengers  

### 4. ISO 2631 Standard Compliance
Comfort assessment was performed using **ISO 2631 vibration standards**, ensuring industry-standard ride comfort evaluation.

### 5. SIL & HIL Validation
The developed model was validated through:

- **Software-in-the-Loop (SIL)** testing  
- **Hardware-in-the-Loop (HIL)** implementation  

to verify real-time feasibility and ECU readiness.

---

## Key Objectives

- Develop a mathematical automotive suspension model  
- Integrate human biodynamic modelling  
- Simulate realistic road vibration scenarios  
- Evaluate passenger comfort metrics  
- Validate real-time execution behavior  
- Ensure model robustness under sensor noise  
- Enable future ECU deployment and adaptive suspension control  

---

## Main Features of the Project

### Real-Time Passenger Comfort Analysis
The system evaluates passenger comfort dynamically under real-world driving disturbances.

### Multi-Parameter Comfort Evaluation
Unlike conventional approaches, the framework evaluates multiple comfort indicators simultaneously:

- RMS  
- VDV  
- Shock Index  

### Real Sensor Data Integration
Actual seat acceleration data was collected using the **MPU9250 sensor** from a moving vehicle for model validation.

### ISO 2631 Standard-Based Evaluation
Comfort thresholds were selected using internationally accepted ride comfort standards instead of arbitrary assumptions.

### MATLAB/Simulink-Based Modelling
The system was designed and simulated using **MATLAB** and **Simulink** for accurate system modelling and testing.

### SIL/HIL Compatibility
The framework supports real-time embedded implementation through **Software-in-the-Loop (SIL)** and **Hardware-in-the-Loop (HIL)** validation.

### Adaptive Suspension Potential
The developed comfort metrics can be extended to adaptive damping systems for real-time suspension optimization.

---

## Methodology / Workflow

1. Road vibration inputs are applied to the suspension model  
2. Vehicle–human biodynamic response is simulated  
3. Acceleration data is generated and processed  
4. Comfort metrics (**RMS, VDV, SI**) are calculated  
5. Results are compared against **ISO 2631 standards**  
6. Model validation is performed using real sensor data  
7. SIL and HIL environments are used for implementation testing  

---

## Folder Structure

```text
Automotive-Passenger-Comfort-and-Handling/
│── README.md
│── vehicle_parameters.m              # Vehicle suspension parameters
│── fullcar.slx.zip                   # Full vehicle Simulink model
│── acc_40_gravity_removed.xlsx       # Processed acceleration dataset
│── presentation.pptx                 # Project presentation

│── images/
│   ├── Adaptive_damping.png
│   ├── Comparison between theoretical and practical.png
│   ├── fixed_damping.png
│   ├── high_damping.png
│   ├── low_damping.png
│   ├── matlab_simulation.png
│   ├── rms.png
│   ├── sensor_deployment.png
│   ├── shock_index.png
│   ├── simulink_model.jpeg
│   └── vdv.png

│── results/
│   ├── hardware_in_loop_testresult.png
│   └── software_in_loop_testresult.png
```

### Folder Description

| Folder/File | Description |
|-------------|-------------|
| `images/` | Contains simulation outputs, damping comparisons, comfort metrics, and sensor deployment visuals |
| `results/` | Contains SIL and HIL validation result outputs |
| `vehicle_parameters.m` | MATLAB parameter file for suspension modelling |
| `fullcar.slx.zip` | Simulink model of the coupled biodynamic–vehicle suspension system |
| `acc_40_gravity_removed.xlsx` | Vehicle acceleration dataset used for analysis |
| `presentation.pptx` | Final project presentation |

---

## Tools & Technologies Used

### Software Tools
- MATLAB  
- Simulink  

### Hardware Components
- MPU9250 Sensor  

### Validation Methods
- Software-in-the-Loop (SIL)  
- Hardware-in-the-Loop (HIL)  

### Standards
- ISO 2631 Ride Comfort Standards  

---

## Testing & Analysis

The developed system was tested using both theoretical simulation data and real-world vehicle acceleration measurements.

### Testing Includes:
- Sensor deployment for acceleration capture  
- MATLAB simulation of suspension response  
- Fixed damping analysis  
- Adaptive damping analysis  
- Low damping vs High damping comparison  
- Hardware-In-the-Loop validation  

The comparison between theoretical and practical seat acceleration confirmed model reliability under practical conditions.

---

## Results

The developed framework successfully demonstrated:

✔ Accurate comfort evaluation using RMS, VDV, and Shock Index  

✔ ISO 2631 compliant ride comfort assessment  

✔ Stable execution under real-time constraints  

✔ Successful SIL and HIL validation  

✔ Improved confidence for automotive ECU deployment  

✔ Practical correlation between simulation and real-world data  

---

## Project Outcome / End Result

The developed coupled car–human suspension model successfully evaluated passenger comfort under uneven road conditions.

The project demonstrates a scalable and industry-oriented approach for automotive ride comfort optimization and intelligent suspension analysis.

This framework can further be extended toward:

- Smart adaptive suspension systems  
- AI-assisted ride comfort optimization  
- Real-time embedded ECU deployment  
- Intelligent vibration mitigation systems  

---

## Team Members

- **K. Vyshnavi**  
- **J. Gayathri**  
- **K. Sahithi**  
- **K. Deepthi**

### Institution
**B V Raju Institute of Technology, Narsapur, Telangana**

---

## Future Scope

- Integration with intelligent adaptive damping systems  
- Real-time ECU implementation  
- Machine learning-based comfort prediction  
- Smart suspension optimization for electric vehicles (EVs)  
- Enhanced passenger biodynamic modelling

---

## License

This project is developed for academic and research purposes.


