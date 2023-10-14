from PyQt5 import uic
from PyQt5.QtGui import QWindow
from StudentDialog import StudentDialog
from TeacherDialog import TeacherDialog

class AppWindow(QWindow):
    """
    The main application window.
    """
    
    def __init__(self):
        """
        Load the UI and initialize its components.
        """
        super().__init__()
        
        self.ui = uic.loadUi('gui_app.ui')
        self.ui.show();
        
        # Student dialog.
        self._student_dialog = StudentDialog()
        self.ui.student_button.clicked.connect(self._show_student_dialog)
        
        # Teacher dialog.
        self._teacher_dialog = TeacherDialog()
        self.ui.teacher_button.clicked.connect(self._show_teacher_dialog)

    def _show_student_dialog(self):
        """
        Show the student dialog.
        """
        self._student_dialog.show_dialog()

    def _show_teacher_dialog(self):
        """
        Show the teacher dialog.
        """
        self._teacher_dialog.show_dialog()
