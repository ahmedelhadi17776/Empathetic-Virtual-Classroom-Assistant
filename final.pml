<?xml version="1.0" encoding="UTF-8" ?>
<Package name="final" format_version="5">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="behavior_1" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="ExampleDialog" src="behavior_1/ExampleDialog/ExampleDialog.dlg" />
        <Dialog name="choose" src="choose/choose.dlg" />
        <Dialog name="quiz" src="quiz/quiz.dlg" />
        <Dialog name="his_quiz" src="his_quiz/his_quiz.dlg" />
        <Dialog name="calc" src="calc/calc.dlg" />
        <Dialog name="maths_quiz" src="maths_quiz/maths_quiz.dlg" />
        <Dialog name="again" src="again/again.dlg" />
        <Dialog name="continue" src="continue/continue.dlg" />
    </Dialogs>
    <Resources>
        <File name="mikhael-landscape-paisaje" src="behavior_1/sounds/mikhael-landscape-paisaje.ogg" />
        <File name="vacuum1" src="behavior_1/vacuum1.ogg" />
        <File name="result" src="result" />
    </Resources>
    <Topics>
        <Topic name="ExampleDialog_enu" src="behavior_1/ExampleDialog/ExampleDialog_enu.top" topicName="ExampleDialog" language="en_US" nuance="enu" />
        <Topic name="choose_enu" src="choose/choose_enu.top" topicName="choose" language="en_US" nuance="enu" />
        <Topic name="quiz_enu" src="quiz/quiz_enu.top" topicName="quiz" language="en_US" nuance="enu" />
        <Topic name="his_quiz_enu" src="his_quiz/his_quiz_enu.top" topicName="his_quiz" language="en_US" nuance="enu" />
        <Topic name="calc_enu" src="calc/calc_enu.top" topicName="calc" language="en_US" nuance="enu" />
        <Topic name="maths_quiz_enu" src="maths_quiz/maths_quiz_enu.top" topicName="maths_quiz" language="en_US" nuance="enu" />
        <Topic name="again_enu" src="again/again_enu.top" topicName="again" language="en_US" nuance="enu" />
        <Topic name="continue_enu" src="continue/continue_enu.top" topicName="continue" language="en_US" nuance="enu" />
    </Topics>
    <IgnoredPaths />
    <Translations auto-fill="en_US">
        <Translation name="translation_en_US" src="translations/translation_en_US.ts" language="en_US" />
    </Translations>
</Package>
