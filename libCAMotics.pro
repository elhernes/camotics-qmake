
TARGET=CAMotics
TEMPLATE=lib
CONFIG+=staticlib

include(common.pri)

DEFINES += CAMOTICS_GUI

SOURCES += $${PWD}/config/camotics/build_info.cpp

SOURCES += $${PWD}/CAMotics/src/camotics/Application.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/CommandLineApp.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/ConcurrentTaskManager.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/Grid.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/SHA256.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/Task.cpp

SOURCES += $${PWD}/CAMotics/src/camotics/contour/CubicalMarchingSquares.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/GridTreeRef.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/GridTree.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/CompositeSurface.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/Surface.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/TriangleMesh.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/FieldFunction.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/GridTreeLeaf.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/VertexSlice.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/MarchingCubes.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/TriangleSurface.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/SliceContourGenerator.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/QEF.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/GridTreeNode.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/CubeSlice.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/contour/Triangle.cpp

SOURCES += $${PWD}/CAMotics/src/camotics/opt/Opt.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/opt/AnnealState.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/opt/Path.cpp

SOURCES += $${PWD}/CAMotics/src/camotics/probe/ProbeGrid.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/probe/Probe.cpp

SOURCES += $${PWD}/CAMotics/src/camotics/project/Workpiece.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/project/Files.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/project/Project.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/project/ResolutionMode.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/project/XMLHandler.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/project/File.cpp

SOURCES += $${PWD}/CAMotics/src/camotics/render/RenderJob.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/render/RenderMode.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/render/Renderer.cpp

SOURCES += $${PWD}/CAMotics/src/camotics/sim/CompositeSweep.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/AABBTree.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/Workpiece.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/OctTree.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/Simulation.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/CutSim.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/SurfaceTask.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/SimulationRun.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/ToolPathTask.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/CutWorkpiece.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/ToolSweep.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/SpheroidSweep.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/ConicSweep.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/AABB.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/Sweep.cpp
SOURCES += $${PWD}/CAMotics/src/camotics/sim/ReduceTask.cpp

