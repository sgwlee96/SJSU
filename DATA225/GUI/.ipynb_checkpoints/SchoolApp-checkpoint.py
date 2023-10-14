import sys
from PyQt5.QtWidgets import QApplication
from MainSchoolWindow import MainSchoolWindow

if __name__ == '__main__':
    app = QApplication(sys.argv)
    form = MainSchoolWindow()
    sys.exit(app.exec_())