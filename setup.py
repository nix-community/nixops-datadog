import sys
import subprocess

from distutils.core import setup, Command

setup(name='nixops-datadog',
      version='@version@',
      description='NixOps backend for Datadog',
      url='https://github.com/AmineChikhaoui/nixops-datadog',
      maintainer='Amine Chikhaoui',
      maintainer_email='amine.chikhaoui91@gmail.com',
      packages=['nixops_datadog', 'nixops_datadog.resources'],
      entry_points={'nixops': ['datadog = nixops_datadog.plugin']},
      py_modules=['plugin']
)
