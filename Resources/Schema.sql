{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "binding-smile",
   "metadata": {},
   "outputs": [],
   "source": [
    "#Create tables for raw data to be loaded into\n",
    "CREATE TABLE police (\n",
    "State NAME PRIMARY KEY,\n",
    "City NAME,\n",
    "Manner_Of_Death VARCHAR,\n",
    "Gender VARCHAR,\n",
    "Race VARCHAR,\n",
    "Name NAME\n",
    ");\n",
    "\n",
    "CREATE TABLE race (\n",
    "State PRIMARY KEY,\n",
    "City VARCHAR,\n",
    "Percent_White REAL,\n",
    "Percent_Black REAL,\n",
    "Percent_Nat_Amer REAL,\n",
    "Percent_Asian,\n",
    "Percent_Hispanic\n",
    ");\n",
    "\n",
    "#Joins tables\n",
    "SELECT police.State, police.City, police.Manner_of_Death, police.Gender, police.Race, police.Name, \n",
    "FROM police\n",
    "JOIN race\n",
    "ON police.State = race.State;\n"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.6.10"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
