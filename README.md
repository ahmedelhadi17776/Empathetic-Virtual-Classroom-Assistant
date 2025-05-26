# Empathetic Virtual Classroom Assistant
**Integrating Emotional AI in Education**

 
## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Configuration](#configuration)
- [Usage](#usage)
- [Methodology](#methodology)
- [Experimental Results](#experimental-results)
- [Future Work](#future-work)
- [Contributing](#contributing)
- [License](#license)

## Overview
The Empathetic Virtual Classroom Assistant (VCA) is an AI-powered system built on the NAO6 humanoid robot and Choregraphe software. It leverages emotional AI to detect and respond to students’ facial expressions and speech cues, dynamically adapting its interactions to enhance engagement and support learning in virtual and hybrid classroom settings.

## Features
- **Real-time Emotion Detection**: Recognizes five key emotions (neutral, happy, surprised, angry, sad) using the robot’s camera.
- **Adaptive Responses**: Triggers appropriate animations and verbal prompts based on detected emotions.
- **Attendance Tracking**: Utilizes facial recognition to log attendance automatically into a CSV record.
- **Interactive Quizzes**: Delivers subject-specific quizzes (Math & History) with real-time speech recognition and scoring.
- **Immediate Feedback**: Provides encouragement or corrective prompts tailored to students’ performance and emotional state.

## Architecture
```
+----------------------+      +-----------------+      +------------------+
| Emotion Detection    | ---> | Response Engine | ---> | NAO6 Robot       |
+----------------------+      +-----------------+      +------------------+
         |                          |
         v                          v
+----------------------+      +-----------------+
| Facial Recognition   | ---> | Attendance Log  |
+----------------------+      +-----------------+
         |
         v
+----------------------+      +-----------------+      +------------------+
| Speech Recognition   | ---> | Quiz Module     | ---> | Scoring Engine   |
+----------------------+      +-----------------+      +------------------+
```  

- **Choregraphe Visual Programming**: Integrates behavior boxes for emotion, face & speech recognition, switch cases, and dialog management.
- **Python Script Boxes**: Handle quiz logic, scoring, and CSV logging.

## Getting Started
### Prerequisites
- NAO6 Humanoid Robot (Firmware v6.x)
- Choregraphe (v2.x)
- Python 3.7+
- Required Libraries:
  - `numpy`, `opencv-python`, `pandas`
  - Speech SDK (e.g., Google Speech-to-Text)

### Installation
1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/empathetic-vca.git
   cd empathetic-vca
   ```
2. **Install Dependencies**
   ```bash
   pip install -r requirements.txt
   ```
3. **Deploy to NAO6**
   - Open `EmpatheticVCA.choregraphe` in Choregraphe.
   - Connect to your NAO6 robot via IP address.
   - Click **Run** to deploy the behavior.

### Configuration
- **Face Database**: `config/faces/` (add student face images named `<student_name>.jpg`)
- **Quiz Questions**: `config/quizzes/math.json`, `config/quizzes/history.json`
- **Voice Model**: Set your speech recognition API keys in `config/speech_credentials.json`

## Usage
1. Power on the NAO6 robot and ensure network connectivity.
2. Start the VCA behavior in Choregraphe.
3. The robot will greet the online students and begin emotion monitoring.
4. Use the on-screen prompts or voice commands to trigger attendance or quizzes.
5. View real-time logs in `logs/attendance.csv` and quiz scores in `logs/quiz_results.csv`.

## Methodology
- **Emotion Detection**: Captured via the `Get Expression Box`, categorized into five emotions.
- **Response Mechanism**: `Switch Case Box` triggers animations and TTS prompts.
- **Attendance**: `Face Recognition Box` identifies students; Python script logs names & timestamps.
- **Quizzes**: `Speech Recognition Box` routes to Math/History quizzes; Python script evaluates answers.
- **Data Logging**: All interactions and scores recorded for analysis.

## Experimental Results
| Module                 | Accuracy | Notes                                   |
|------------------------|----------|-----------------------------------------|
| Emotion Detection      | 89.4%    | Struggles in low-light & subtle cases   |
| Facial Recognition     | 93.0%    | Affected by angles & appearance changes |
| Speech Recognition     | 90.0%    | Less accurate with accents/noise        |
| Math Quiz Avg. Score   | 88%      |                                         |
| History Quiz Avg. Score| 91%      |                                         |

## Future Work
- **Machine Learning Models**: Integrate CNN/RNN for nuanced, continuous emotion tracking.
- **Multimodal Analysis**: Combine facial, vocal, and physiological data.
- **LMS Integration**: Sync attendance & grades with Moodle, Blackboard, etc.
- **Scalability**: Support multi-student simultaneous interactions and group sessions.
- **Mobile App**: Extend interaction via tablets or smartphones.


## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

