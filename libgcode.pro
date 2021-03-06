
TARGET=gcode
TEMPLATE=lib

include(common.pri)

SOURCES += $${PWD}/CAMotics/src/gcode/Codes.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ToolTable.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/Arc.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ControllerImpl.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/Plane.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/MoveType.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/Helix.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/OutputCommand.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/PlannerConfig.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/InputCommand.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/PlannerCommand.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/DwellCommand.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/SCurve.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/Runner.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/Planner.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/LineCommand.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/PauseCommand.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/SetCommand.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/LinePlanner.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/plan/SeekCommand.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/Axes.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/interp/DoLoop.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/interp/GCodeInterpreter.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/interp/ProgramProducer.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/interp/SubroutineCall.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/interp/OCodeInterpreter.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/interp/Loop.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/interp/SubroutineLoader.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/interp/RepeatLoop.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/interp/Interpreter.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/interp/Evaluator.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/interp/ProducerStack.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/parse/TokenType.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/parse/Parser.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/parse/Tokenizer.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ToolPath.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ToolShape.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/MachineEnum.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/Transform.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/JSONMachine.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/PathMode.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/GCodeMachine.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/MachinePipeline.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/MachineState.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/Transforms.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/MoveSink.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/MachineUnitAdapter.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/MachineLinearizer.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/PortType.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/DynaMachine.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/machine/TransformStack.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/Tool.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/Operator.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/NamedReference.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/Assign.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/Reference.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/OCode.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/QuotedExpr.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/Word.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/BinaryOp.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/Block.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/Comment.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/Number.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/Program.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/UnaryOp.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ast/FunctionCall.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/Move.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/Printer.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/ModalGroup.cpp
SOURCES += $${PWD}/CAMotics/src/gcode/Units.cpp
