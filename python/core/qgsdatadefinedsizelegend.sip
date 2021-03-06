/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgsdatadefinedsizelegend.h                                  *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/






class QgsDataDefinedSizeLegend
{
%Docstring
 Object that keeps configuration of appearance of marker symbol's data-defined size in legend.
 For example: the list of classes (size values), whether the classes should appear in separate
 legend nodes or whether to collapse them into one legend node.

.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsdatadefinedsizelegend.h"
%End
  public:

    QgsDataDefinedSizeLegend();
%Docstring
 Constructor for QgsDataDefinedSizeLegend.
%End

    QgsDataDefinedSizeLegend( const QgsDataDefinedSizeLegend &other );
%Docstring
Copy constructor
%End

    enum LegendType
    {
      LegendSeparated,
      LegendCollapsed,
    };

    enum VerticalAlignment
    {
      AlignCenter,
      AlignBottom,
    };

    struct SizeClass
    {
      SizeClass( double size, const QString &label );

      double size;    //!< Marker size in units used by the symbol (usually millimeters). May be further scaled before rendering if size scale transformer is enabled.
      QString label;  //!< Label to be shown with the particular symbol size
    };

    void setLegendType( LegendType type );
%Docstring
Sets how the legend should be rendered
%End
    LegendType legendType() const;
%Docstring
Returns how the legend should be rendered
 :rtype: LegendType
%End

    void setSymbol( QgsMarkerSymbol *symbol /Transfer/ );
%Docstring
Sets marker symbol that will be used to draw markers in legend
%End
    QgsMarkerSymbol *symbol() const;
%Docstring
Returns marker symbol that will be used to draw markers in legend
 :rtype: QgsMarkerSymbol
%End

    void setSizeScaleTransformer( QgsSizeScaleTransformer *transformer /Transfer/ );
%Docstring
Sets transformer for scaling of symbol sizes. Takes ownership of the object. Accepts null pointer to set no transformer.
%End
    QgsSizeScaleTransformer *sizeScaleTransformer() const;
%Docstring
Returns transformer for scaling of symbol sizes. Returns null if no transformer is defined.
 :rtype: QgsSizeScaleTransformer
%End

    void setClasses( const QList< QgsDataDefinedSizeLegend::SizeClass > &classes );
%Docstring
Sets list of classes: each class is a pair of symbol size (in units used by the symbol) and label
%End
    QList< QgsDataDefinedSizeLegend::SizeClass > classes() const;
%Docstring
Returns list of classes: each class is a pair of symbol size (in units used by the symbol) and label
 :rtype: list of QgsDataDefinedSizeLegend.SizeClass
%End

    void setTitle( const QString &title );
%Docstring
Sets title label for data-defined size legend
%End
    QString title() const;
%Docstring
Returns title label for data-defined size legend
 :rtype: str
%End

    void setVerticalAlignment( VerticalAlignment vAlign );
%Docstring
Sets vertical alignment of symbols - only valid for collapsed legend
%End
    VerticalAlignment verticalAlignment() const;
%Docstring
Returns vertical alignment of symbols - only valid for collapsed legend
 :rtype: VerticalAlignment
%End

    void setFont( const QFont &font );
%Docstring
Sets font used for rendering of labels - only valid for collapsed legend
%End
    QFont font() const;
%Docstring
Returns font used for rendering of labels - only valid for collapsed legend
 :rtype: QFont
%End

    void setTextColor( const QColor &color );
%Docstring
Sets text color for rendering of labels - only valid for collapsed legend
%End
    QColor textColor() const;
%Docstring
Returns text color for rendering of labels - only valid for collapsed legend
 :rtype: QColor
%End

    void setTextAlignment( Qt::AlignmentFlag flag );
%Docstring
Sets horizontal text alignment for rendering of labels - only valid for collapsed legend
%End
    Qt::AlignmentFlag textAlignment() const;
%Docstring
Returns horizontal text alignment for rendering of labels - only valid for collapsed legend
 :rtype: Qt.AlignmentFlag
%End


    void updateFromSymbolAndProperty( const QgsMarkerSymbol *symbol, const QgsProperty &ddSize );
%Docstring
Updates the list of classes, source symbol and title label from given symbol and property
%End

    QgsLegendSymbolList legendSymbolList() const;
%Docstring
Generates legend symbol items according to the configuration
 :rtype: QgsLegendSymbolList
%End

    void drawCollapsedLegend( QgsRenderContext &context, QSize *outputSize /Out/ = 0, int *labelXOffset /Out/ = 0 ) const;
%Docstring
 Draw the legend if using LegendOneNodeForAll and optionally output size of the legend and x offset of labels (in painter units).
 If the painter in context is null, it only does size calculation without actual rendering.
 Does nothing if legend is not configured as collapsed.
%End

    QImage collapsedLegendImage( QgsRenderContext &context, const QColor &backgroundColor = Qt::transparent, double paddingMM = 1 ) const;
%Docstring
Returns output image that would be shown in the legend. Returns invalid image if legend is not configured as collapsed.
 :rtype: QImage
%End

    static QgsDataDefinedSizeLegend *readXml( const QDomElement &elem, const QgsReadWriteContext &context ) /Factory/;
%Docstring
Creates instance from given element and returns it (caller takes ownership). Returns null on error.
 :rtype: QgsDataDefinedSizeLegend
%End

    void writeXml( QDomElement &elem, const QgsReadWriteContext &context ) const;
%Docstring
Writes configuration to the given XML element.
%End

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgsdatadefinedsizelegend.h                                  *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
