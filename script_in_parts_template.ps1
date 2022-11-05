param(
    [switch]$First,
    [switch]$Second,
    [switch]$Third,
    [switch]$Last
)

function FirstPart {
    Write-Host "First part of the script ran"
    return $true
}
function SecondPart {
    Write-Host "Second part of the script ran"
    return $true
}

function ThirdPart {
    Write-Host "Third part of the script ran"
    return $true
}

function LastPart {
    Write-Host "Last part of the script ran"
    return $true
}

$Empty = $true
if ($First) {
    if (FirstPart) {
        $Empty = $false
        Write-Host "Frist Part succeded"
    }
}
if ($Second) {
    if (SecondPart) {
        $Empty = $false
        Write-Host "Second Part succeded"
    }
}
if ($Third) {
    if (ThirdPart) {
        $Empty = $false
        Write-Host "Third Part succeded"
    }
}
if ($Last) {
    if (LastPart) {
        $Empty = $false
        Write-Host "Last Part succeded"
    }
}
if ($Empty) {
    Write-Host "Runing all script"
    if (-Not (FirstPart)) {
        "Something went wrong during the First part"
    }
    if (-Not (SecondPart)) {
        "Something went wrong during the Second part"
    }
    if (-Not (ThirdPart)) {
        "Something went wrong during the Third part"
    }
    if (-Not (LastPart)) {
        "Something went wrong during the Last part"
    }
}