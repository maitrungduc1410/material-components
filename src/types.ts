export interface IMDButtonProps {
  type?: string,
  title?: string,
  enable?: boolean,
  elevation?: number,
  textColor?: number,
  backgroundColor?: number,
  borderWidth?: number,
  borderColor?: number,
  borderRadius?: number,
  rippleColor?: number
  textSize?: number,
  onPress(data: any): void
}
