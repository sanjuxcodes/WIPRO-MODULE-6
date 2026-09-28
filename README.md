# IVI Simulator (Media + Navigation + Projection) - Java

Pure Java 11+ (Swing). No external libraries.

## Run
Linux/macOS:  ./run.sh        Windows: run.bat
Tests:        ./run.sh test   (Windows: run.bat test)
Screenshots:  ./run.sh shots  (writes PNGs to ./screenshots)

## Architecture -> code mapping
| Diagram component            | Class                          |
|------------------------------|--------------------------------|
| IPC / D-Bus / SOME-IP        | core/EventBus, core/Topics     |
| Audio Manager / Audio Routing| core/AudioFocusManager         |
| Media Framework + Media App  | core/MediaService, ui/MediaPanel |
| Route Engine + Map Service   | core/RouteEngine, core/NavigationService, ui/NavPanel |
| Smartphone Session Manager   | core/ProjectionManager, ui/ProjectionPanel |
| HMI / Head unit              | ui/IviSystem, ui/MainApp       |

## Demo scenarios
1. Media tab: Play music.
2. Navigation tab: Start navigation. Each turn prompt ducks media volume (audio focus DUCK).
3. Projection tab: Connect Android Auto, touch "Music": phone audio pauses IVI media (LOSS). Disconnect: media resumes.
