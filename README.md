# ETL wttrin Project

## Overview

This project is designed to automate the Extract, Transform, Load (ETL) process for collecting and analyzing weather forecast data. The primary goal is to measure the accuracy of weather forecasts over time by comparing them to observed data.

## Project Structure

The project consists of several shell scripts and data files that work together to automate data collection, processing, and analysis.

### Files

- **`fc_accuracy.sh`**: A script that calculates the accuracy of weather forecasts by comparing forecast data to observed data.
- **`historical_fc_accuracy.tsv`**: A TSV (Tab-Separated Values) file containing historical forecast accuracy data.
- **`rx_poc.log`**: A log file that records the process and outcomes of the ETL operations.
- **`rx_poc.sh`**: A script for processing weather data, likely part of the data extraction or transformation steps.
- **`scratch.txt`**: A text file that may contain notes, scratch work, or temporary data relevant to the project.
- **`synthetic_historical_fc_accuracy.tsv`**: A TSV file containing synthetic data, possibly used for testing or validation of the ETL process.
- **`weekly_stats.sh`**: A script that generates weekly statistics on forecast accuracy, summarizing the performance of forecasts over the past week.

## Installation

To use this project, you'll need a Unix-like environment with a shell that supports Bash scripting.

1. Clone the repository or download the project files.
2. Ensure that all scripts have executable permissions:
    ```bash
    chmod +x fc_accuracy.sh rx_poc.sh weekly_stats.sh
    ```
3. Install any dependencies required by the scripts (if applicable).

## Usage

1. **Run `rx_poc.sh`** to initiate the data extraction and processing steps.
    ```bash
    ./rx_poc.sh
    ```

2. **Run `fc_accuracy.sh`** to calculate and log the accuracy of the weather forecasts.
    ```bash
    ./fc_accuracy.sh
    ```

3. **Run `weekly_stats.sh`** to generate a weekly summary of forecast accuracy.
    ```bash
    ./weekly_stats.sh
    ```

## Data Files

- **`historical_fc_accuracy.tsv`**: This file contains the historical accuracy data used for analyzing trends and making adjustments to forecast models.
- **`synthetic_historical_fc_accuracy.tsv`**: This synthetic data file is useful for testing and verifying the ETL process without relying on actual observed data.

## Logs

- **`rx_poc.log`**: The log file contains detailed information about each ETL operation, including errors and warnings, to help troubleshoot any issues.

## Notes

- **`scratch.txt`**: This file might be used for any temporary data storage or as a scratchpad for notes during development. It is not essential for the main ETL process.

## Contributing

If you'd like to contribute to this project, feel free to fork the repository, make your changes, and submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Acknowledgments

Special thanks to the contributors who made this project possible.

