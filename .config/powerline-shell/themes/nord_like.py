class DefaultColor(object):
    """
    This class should have the default colors for every segment.
    Please test every new segment with this theme first.
    """
    # RESET is not a real color code. It is used as in indicator
    # within the code that any foreground / background color should
    # be cleared
    RESET = -1

    USERNAME_FG = 250
    USERNAME_BG = 240
    USERNAME_ROOT_BG = 124

    HOSTNAME_FG = 250
    HOSTNAME_BG = 238

    HOME_SPECIAL_DISPLAY = True
    HOME_BG = 116  # nordic cyan
    HOME_FG = 0  # white
    PATH_BG = 237  # dark grey
    PATH_FG = 250  # light grey
    CWD_FG = 254  # nearly-white grey
    SEPARATOR_FG = 244

    READONLY_BG = 124
    READONLY_FG = 254

    SSH_BG = 166  # medium orange
    SSH_FG = 254

    REPO_CLEAN_BG = 107  # nordic gren
    REPO_CLEAN_FG = 0  # black
    REPO_DIRTY_BG = 9  # nordic red
    REPO_DIRTY_FG = 15  # white

    JOBS_FG = 39
    JOBS_BG = 238

    CMD_PASSED_BG = 236
    CMD_PASSED_FG = 15
    CMD_FAILED_BG = 161
    CMD_FAILED_FG = 15

    SVN_CHANGES_BG = 148
    SVN_CHANGES_FG = 22  # dark green

    GIT_AHEAD_BG = 240
    GIT_AHEAD_FG = 250
    GIT_BEHIND_BG = 240
    GIT_BEHIND_FG = 250
    GIT_STAGED_BG = 107  # nordic green
    GIT_STAGED_FG = 0  # black
    GIT_NOTSTAGED_BG = 9  # nordic red
    GIT_NOTSTAGED_FG = 15  # white
    GIT_UNTRACKED_BG = 9  # nordic red
    GIT_UNTRACKED_FG = 15  # white
    GIT_CONFLICTED_BG = 9
    GIT_CONFLICTED_FG = 15

    GIT_STASH_BG = 221
    GIT_STASH_FG = 0

    VIRTUAL_ENV_BG = 35  # a mid-tone green
    VIRTUAL_ENV_FG = 00

    BATTERY_NORMAL_BG = 22
    BATTERY_NORMAL_FG = 7
    BATTERY_LOW_BG = 196
    BATTERY_LOW_FG = 7

    AWS_PROFILE_FG = 39
    AWS_PROFILE_BG = 238

    TIME_FG = 250
    TIME_BG = 238


class Color(DefaultColor):
    """
    This subclass is required when the user chooses to use 'default' theme.
    Because the segments require a 'Color' class for every theme.
    """
    pass
