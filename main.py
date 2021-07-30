
import sys
from os.path import abspath, dirname, join
from PySide2 import QtCore
from PySide2.QtCore import QObject, Slot
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtQuickControls2 import QQuickStyle
from PySide2 import QtSql
import resource
#from flaskUpload import flaskClass
from PySide2.QtCore import QUrl, QStringListModel

class Bridge(QObject):

    @Slot(str, result=str)
    def getColor(self, s):
        if s.lower() == "red":
            return "#ef9a9a"
        elif s.lower() == "green":
            return "#a5d6a7"
        elif s.lower() == "blue":
            return "#90caf9"
        else:
            return "white"

    @Slot(float, result=int)
    def getSize(self, s):
        size = int(s * 34)
        if size <= 0:
            return 1
        else:
            return size

    @Slot(str, result=bool)
    def getItalic(self, s):
        if s.lower() == "italic":
            return True
        else:
            return False

    @Slot(str, result=bool)
    def getBold(self, s):
        if s.lower() == "bold":
            return True
        else:
            return False

    @Slot(str, result=bool)
    def getUnderline(self, s):
        if s.lower() == "underline":
            return True
        else:
            return False



if __name__ == '__main__':
    app = QGuiApplication(sys.argv)
    #QQuickStyle.setStyle("Universal")
    engine = QQmlApplicationEngine()


    # Instance of the Python object
    bridge = Bridge()
    #flaskClass()

    model = QStringListModel()
    model.setStringList(["hi", "ho"])
    
    # Expose the Python object to QML
    context = engine.rootContext()
    context.setContextProperty("con", bridge)
    context.setContextProperty("Appcore", appCore)
    print(QtCore.QCoreApplication.applicationFilePath())

    # Get the path of the current directory, and then add the name
    # of the QML file, to load it.
    qmlFile = join(dirname(__file__), 'main.qml')
    engine.load(abspath(qmlFile))


    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec_())
